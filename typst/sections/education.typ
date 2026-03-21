// Education section

#import "../styles.typ": *

#let education(entries) = {
  section-heading("Education")

  for (i, e) in entries.enumerate() {
    entry-header(e.institution, e.location, first: i == 0)
    entry-position(e.position, e.date)
    entry-description(e.description)
  }
}
