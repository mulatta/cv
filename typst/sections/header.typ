// Header section - Name and contact info

#import "../styles.typ": *

#let header(data) = {
  set align(center)
  set par(leading: 0.65em)

  text(size: name-size, weight: "bold")[#data.name]
  linebreak()
  [#data.department]
  linebreak()
  [#data.affiliation]
  linebreak()
  [#data.address]
  linebreak()
  [E-mail: #link("mailto:" + data.email)[#data.email]]
  linebreak()
  [#link(data.website)[#data.website.trim("https://", at: start)] | #link(data.github)[#data.github.trim("https://", at: start)]]
}
