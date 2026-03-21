// Research Experience section

#import "../styles.typ": *

#let research-experience(entries) = {
  section-heading("Research Experience")

  for (i, e) in entries.enumerate() {
    entry-header(e.lab, e.location, first: i == 0)
    entry-institution(e.institution)
    for p in e.positions {
      entry-position(p.title, p.date)
    }
    for (j, proj) in e.projects.enumerate() {
      v(leading)
      [*#proj.name* \
        #proj.description]
    }
  }
}

#let research-interest(interests) = {
  section-heading("Research Interest")

  for (i, line) in interests.enumerate() {
    [#line]
    if i < interests.len() - 1 { linebreak() }
  }
}
