import os
import glob
import re
from datetime import datetime

cartellaRepo = "RepoSito"
cartellaRepoDocumenti = "RepoSito/documentiCompilati"

def get_projects():
    """Find and sort numbered project folders descending by prefix"""
    projects = [
        f for f in os.listdir(cartellaRepoDocumenti) 
        if re.match(r'^\d+-', f) and os.path.isdir(os.path.join(cartellaRepoDocumenti, f))
    ]
    return sorted(
        projects,
        key=lambda x: int(re.search(r'^(\d+)', x).group(1)),
        reverse=True
    )

def generate_project_section(project_folder):
    project_path = os.path.join(cartellaRepoDocumenti, project_folder)
    match = re.match(r'^(\d+)-(.*)', project_folder)
    if not match:
        return ""
    number, name_part = match.groups()
    
    # Determine display name
    clean_name = name_part.replace('-', '')
    if clean_name.islower() and 3 <= len(clean_name) <= 5:
        display_name = name_part.upper()
    else:
        display_name = name_part.replace('-', ' ').title()
    
    button_text = f"{number} - {display_name}"
    
    html = f"""
    <section>
        <button class="accordionButton">{button_text}</button>
        <div class="accordionContent" id="{project_folder}">
    """
    if project_folder == "2-RTB":
        html += """
            <h2>Release</h2>
            <ul class="document-list">
                <li><a href="https://github.com/Sigma18Unipd/ProofOfConcept/archive/refs/tags/1.0.0.zip">PoC</a></li>
            </ul>
        """
        relazioni_dir = os.path.join(project_path, "relazioni")
        if os.path.exists(relazioni_dir):
            relazioni_pdfs = sorted(glob.glob(os.path.join(relazioni_dir, "*.pdf")), reverse=True)
            if relazioni_pdfs:
                html += """
                <h2>Relazioni</h2>
                <ul class="document-list">
                """
                for pdf in relazioni_pdfs:
                    filename = os.path.basename(pdf)
                    doc_name = filename.replace(".pdf", "").replace("_", " ").title()
                    rel_path = os.path.relpath(pdf, project_path)
                    html += f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{doc_name}</a></li>'
                html += """
                </ul>
                """
    
    # Special case for diaries (0-diaridibordo)
    is_diary = project_folder.startswith('0-diaridibordo')
    
    # Non-verbali documents
    non_verbali = []
    ddb=[]
    for doc in glob.glob(f"{project_path}/**/*.pdf", recursive=True):
        rel_path = os.path.relpath(doc, project_path)
        path_parts = rel_path.split(os.sep)
        is_rtb = is_diary and "rtb" in path_parts
        
        if "verbali" not in path_parts:
            if is_rtb:
                # Special case for RTB documents
                filename = os.path.basename(doc)
                # Extract date from filename format like ddb_20250428.pdf
                date_match = re.search(r'ddb_(\d{8})\.pdf', filename)
                if date_match:
                    date_str = date_match.group(1)
                    try:
                        # Format as dd/mm/yyyy
                        formatted_date = f"{date_str[6:8]}/{date_str[4:6]}/{date_str[:4]}"
                        html_str=((is_rtb, f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{formatted_date}</a></li>'))
                        ddb.append((date_str, html_str))
                    except ValueError:
                        # Fallback if date parsing fails
                        html_str=((is_rtb, f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{filename}</a></li>'))
                        ddb.append(("00000000", html_str))
                else:
                    non_verbali.append((is_rtb, f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{filename}</a></li>'))
            else:
                doc_name = os.path.basename(doc).replace(".pdf", "").replace('_', ' ').title()
                non_verbali.append((is_rtb, f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{doc_name}</a></li>'))
    
    if ddb:
        ddb.sort(key=lambda x: x[0], reverse=True)
        non_verbali.extend([item[1] for item in ddb])

    # Group documents by type (RTB or not)
    rtb_docs = [item[1] for item in non_verbali if item[0]]
    normal_docs = [item[1] for item in non_verbali if not item[0]]
    # Add RTB documents without header if present
    if rtb_docs:
        html += """
                <ul class="document-list">
        """
        html += '\n'.join(rtb_docs)
        html += """
                </ul>
        """
    
    # Add normal documents with header if present
    if normal_docs:
        html += """
                <h2>Documenti</h2>
                <ul class="document-list">
        """
        html += '\n'.join(normal_docs)
        html += """
                </ul>
        """
    
    # Verbali subsections
    for tipo in ["interni", "esterni"]:
        verbali_dir = os.path.join(project_path, 'verbali', tipo)
        if not os.path.exists(verbali_dir):
            continue
        verbali = sorted(glob.glob(os.path.join(verbali_dir, '*.pdf')), 
                       key=lambda x: os.path.basename(x), reverse=True)
        if verbali:
            html += f"""
                    <h2>Verbali {tipo.title()}</h2>
                    <ul>
            """
            for pdf in verbali:
                filename = os.path.basename(pdf)
                date_str = filename.split('_')[1]
                try:
                    date = datetime.strptime(date_str[:8], "%Y%m%d").strftime("%d/%m/%Y")
                except ValueError:
                    date = "Data sconosciuta"
                rel_path = os.path.relpath(pdf, project_path)
                html += f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{date}</a></li>'
            html += '</ul>'
    
    html += '</div>\n    </section>'
    return html

def update_index():
    with open(cartellaRepo + "/index.html", "r") as f:
        content = f.read()
    
    projects = get_projects()
    
    # Generate main content
    projects_html = "\n".join([generate_project_section(p) for p in projects])
    main_content = f'<div class="doubleContainer">\n{projects_html}\n</div>'
    
    # Update main content
    start_marker = "<!-- AUTO-GENERATED CONTENT START -->"
    end_marker = "<!-- AUTO-GENERATED CONTENT END -->"
    content = re.sub(
        re.escape(start_marker) + r".*?" + re.escape(end_marker),
        f"{start_marker}\n{main_content}\n{end_marker}",
        content,
        flags=re.DOTALL
    )
    
    with open(cartellaRepo + "/index.html", "w") as f:
        f.write(content)

if __name__ == "__main__":
    update_index()
