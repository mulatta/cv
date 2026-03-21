// Open Source Contributions section

#import "../styles.typ": *

#let oss(entries) = {
  section-heading("Open Source Contributions")

  for (i, e) in entries.enumerate() {
    entry-header(
      e.name,
      link(e.url)[#e.url.trim("https://", at: start)],
      first: i == 0,
    )
    if "position" in e { entry-position(e.position, e.date) }
    entry-description(e.description)
  }
}
