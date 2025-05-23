#let presentazione(
  titoloDocumento: "",
  content: [],
) = {
  //Proprietà generali documento
  set text(lang: "it", size: 22pt)
  set page(paper: "a4", flipped: true)
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
  set page(margin: (x: 2cm, y: 1cm))
  align(top)[
    #grid(
      align: horizon,
      columns: (1fr, 1fr),
      align(left)[#image("../assets/img/Logo.svg", height: 10%)],
      align(right)[#text(size: 14pt, link("mailto: Sigma18Unipd@gmail.com")[Sigma18Unipd\@gmail.com])],
    )
  ]

  align(center + horizon)[
    #text(size: 38pt, weight: "bold", titoloDocumento)
  ]

  align(bottom + center)[
    #set text(size: 20pt)
    #set par(spacing: 15pt)
    #text("Mirco Borella    Alessandro Bernardello   Aleena Mathew   Matteo Marangon") \

    #text("Carmelo Russello   Pietro Crotti   Marco Egidi")
  ]

  pagebreak()


  //Proprietà generali pagine successive
  set par(spacing: 0.65em)
  set page(
    margin: (x: 2cm, y: 3cm),
    header: context [
      #grid(
        align: horizon,
        columns: (1fr, 1fr),
        align(left)[#image("../assets/img/LogoSlim.svg", height: 32%)], align(right + horizon)[#text(size: 12pt, titoloDocumento)],
      )
      #line(length: 100%, stroke: 0.5pt)
    ],
    footer: context [
      #line(length: 100%, stroke: 0.5pt)
      #align(right)[
        #text(size: 16pt, counter(page).display("1/1", both: true))
      ]
    ],
  )

  set heading(numbering: "(I)")
  show heading: it => [
    #set text(size: 34pt)
    #it.body \
    #v(0.1em)
  ]

  set list(spacing: 1em)

  //Contenuto
  content
}

#let spacerS = v(0.5em)
#let spacerM = v(1em)
#let spacerL = v(2em)
#let spacerXL = v(3em)
