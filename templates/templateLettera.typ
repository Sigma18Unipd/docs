#let verbale(
  titoloDocumento: "",
  mittenti: (),
  destinatari: (),
  content: [],
  firmaEsterna: false,
) = {
  //Proprietà generali documento
  set text(lang: "it", size: 12pt)
  set page(margin: (x: 2cm, y: 2cm), paper: "a4")
  set par(justify: true)
  set document(title: titoloDocumento)
  show link: underline
  show enum: it => pad(
    left: 1em,
    {
      set enum(
        numbering: n => style(styles => {
          let num = numbering("1.", n)
          place(dx: -measure(num, styles).width, num)
        }),
      )
      it
    },
  )

  //Prima pagina
  align(top + center)[
    #image("../assets/img/Logo.svg", width: 30%)
    #text(size: 14pt)[
      #link("mailto: Sigma18Unipd@gmail.com")[Sigma18Unipd\@gmail.com]
    ]
  ]
  align(center + horizon)[
    #text(size: 30pt, weight: "bold", titoloDocumento)
  ]
  align(bottom + center)[
    #set text(size: 14pt)
    #set table(
      stroke: none,
      gutter: 0.2em,
    )
    #grid(
      columns: (1fr, 1fr),
      rows: auto,
      align: horizon,
      grid.cell(
        table(
          columns: 2,
          align: left,
          table.vline(x: 1),
          ..if type(mittenti) == str {
            (align(right + top)[*Mittente*], mittenti)
          } else {
            (align(right + top)[*Mittenti*], mittenti.join("\n"))
          },
        ),
      ),
      grid.cell(
        table(
          columns: 2,
          align: left,
          table.vline(x: 1),
          ..if type(destinatari) == str {
            (align(right + top)[*Destinatario*], text(style: "italic", destinatari))
          } else {
            (align(right + top)[*Destinatari*], text(style: "italic", destinatari.join("\n")))
          }
        ),
      )
    )
    #v(2em)
    #set par(spacing: 0.7em)
  ]
  pagebreak()

  //Proprietà generali pagine successive
  set page(
    margin: (x: 2cm, y: 3cm),
    header: [
      #grid(
        align: horizon,
        columns: (1fr, 1fr),
        align(left)[#image("../assets/img/LogoSlim.svg", height: 30%)], align(right + horizon)[#text(size: 12pt, titoloDocumento)],
      )
      #line(length: 100%, stroke: 0.5pt)
    ],
    numbering: "1",
  )

  //Contenuto
  content
  if firmaEsterna == true {
    v(25pt)
    align(right, text(weight: "bold", "Firma dell'azienda"))
  }
}
