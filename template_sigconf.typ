#let conf(
  title: none,
  authors: (),
  main_figure_path: none,
  main_figure_caption: none,
  abstract: [],
  ccs_concepts: [],
  keywords: [],
  doc,
) = {
  // Set and show rules from before.
  set page(
  paper: "us-letter",
  header: align(
    right + horizon,
    title
  ),
  columns: 2,
  )
  set par(justify: true)
  set text(
    font: "Libertinus Serif",
    size: 9pt,
  )
  let count = authors.len()
  let ncols = calc.min(count, 3)
  place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
  )[
    #align(center, text(17pt)[
    *#title*
    ]),
    #grid(
    columns: (1fr,) * ncols,
    row-gutter: 24pt,
    ..authors.map(author => [
      #author.name \
      #author.affiliation \
      #author.city \
      #author.country \
      #link("mailto:" + author.email)
    ]),
  ),
  #figure(
    image(main_figure_path),
    caption: [
      #main_figure_caption
    ],
  )
  ]
  par(justify: false)[
    *Abstract* \
    #abstract
  ]
  par(justify: true)[
    *CCS CONCEPTS*
    #ccs_concepts
  ]
  par(justify: false)[
    *Keywords* \
    #keywords
  ]

  set align(left)
  set heading(numbering: "1.")
  doc
}