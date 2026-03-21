// Relevant Experience section

#import "../styles.typ": *

#let experience(entries) = {
  section-heading("Relevant Experience")

  for (i, e) in entries.enumerate() {
    let render-entry() = {
      entry-header(e.title, e.location, first: i == 0)
      if "institution" in e { entry-institution(e.institution) }
      entry-position(e.position, e.date)
      if "description" in e { entry-description(e.description) }
    }
    if i == 0 { render-entry() } else {
      block(breakable: false, render-entry())
    }
  }
}
