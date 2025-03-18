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
    
    # Non-verbali documents
    non_verbali = []
    for doc in glob.glob(f"{project_path}/**/*.pdf", recursive=True):
        rel_path = os.path.relpath(doc, project_path)
        if "verbali" not in rel_path.split(os.sep):
            doc_name = os.path.basename(doc).replace(".pdf", "").replace('_', ' ').title()
            non_verbali.append(f'<li><a href="documentiCompilati/{project_folder}/{rel_path}">{doc_name}</a></li>')
    
    if non_verbali:
        html += """
                <h2>Documenti</h2>
                <ul class="document-list">
        """
        html += '\n'.join(non_verbali)
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
    html += '</section>'
    return html

def update_index():
    with open(cartellaRepo + "/index.html", "r") as f:
        content = f.read()
    
    projects = get_projects()
    
    # Generate main content
    projects_html = "\n".join([generate_project_section(p) for p in projects])
    main_content = f'<section>\n    <div class="doubleContainer">\n{projects_html}\n    </div>\n</section>'
    
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