// Relevant Skills section

#import "../styles.typ": *

#let skills(entries) = {
  section-heading("Relevant Skills")

  skills-table(
    ..entries.map(e => skill-row(e.label, e.details)),
  )
}
