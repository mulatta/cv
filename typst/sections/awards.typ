// Awards and Honors section

#import "../styles.typ": *

#let awards(entries) = {
  block(breakable: false)[
    #section-heading("Awards and Honors")

    #table(
      columns: (1fr, auto),
      stroke: none,
      inset: (x: 0pt, y: 4pt),
      align: (left, right),
      ..entries
        .map(e => (
          [#e.description],
          [#e.where],
        ))
        .flatten()
    )
  ]
}
