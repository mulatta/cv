// CV Styles - matching original DOCX format

// Page setup (from DOCX: top=3cm, others=2.54cm)
#let page-margin = (top: 3cm, bottom: 2.54cm, left: 2.54cm, right: 2.54cm)

// Fonts - Times New Roman
#let main-font = "Times New Roman"
#let main-size = 10pt
#let name-size = 14pt

// Colors
#let heading-color = black
#let text-color = black
#let link-color = black

// Line spacing - DOCX uses line="360" = 1.5x line height
// Word's default line = 12pt for 10pt font, so 1.5x = 18pt total
// leading in typst = space between baselines - font size
#let line-height = 18pt  // Total line height (1.5x of ~12pt default)
#let leading = 8pt       // Space between lines (18pt - 10pt)

// Spacing
#let header-body-spacing = 1em  // Space between header and first section

// Section heading style (with 0.75pt underline, 1pt space from DOCX)
#let section-heading(title) = {
  v(line-height) // One blank line before section
  text(weight: "bold", size: 11pt)[#title]
  v(1pt) // DOCX w:space="1" = 1pt between text and border
  line(length: 100%, stroke: 0.75pt)
  v(2pt) // Small space after line, content follows with normal leading
}

// ===========================================
// Entry Components (for consistent styling)
// ===========================================

// Entry spacing between different entries
#let entry-spacing() = {
  v(line-height)
}

// Entry header: Bold title with location (two-column layout)
// first: whether this is the first entry in a section (no spacing before)
#let entry-header(title, location, first: false) = {
  if not first { entry-spacing() }
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(weight: "bold")[#title], text(weight: "bold")[#location],
  )
}

// Entry institution: Institution name (not bold, regular text)
#let entry-institution(name) = {
  [#name]
}

// Entry position: Italic role/position with date
#let entry-position(position, date) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    emph[#position], text[#date],
  )
}

// Entry description: Regular text for descriptions
// Accepts a string, content, or array of strings (joined with linebreaks)
#let entry-description(content) = {
  if type(content) == array {
    for (i, line) in content.enumerate() {
      [#line]
      if i < content.len() - 1 { linebreak() }
    }
  } else {
    [#content]
  }
}

// ===========================================
// Table-based entries (Skills, Awards)
// ===========================================

// Skill entry row: Bold label with content
#let skill-row(label, content) = {
  (text(weight: "bold")[#label], [#content])
}

// Award entry row: Description with right-aligned location/date
#let award-row(description, location-date) = {
  ([#description], [#location-date])
}

// Skills table wrapper
#let skills-table(..rows) = {
  table(
    columns: (50mm, 1fr),
    stroke: none,
    inset: (x: 0pt, y: 4pt),
    align: (left, left),
    ..rows.pos().flatten()
  )
}

// Awards table wrapper
#let awards-table(..rows) = {
  table(
    columns: (1fr, auto),
    stroke: none,
    inset: (x: 0pt, y: 4pt),
    align: (left, right),
    ..rows.pos().flatten()
  )
}

// ===========================================
// Utility functions
// ===========================================

// Simple entry with right-aligned info
#let simple-entry(left, right) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    left, right,
  )
}

// List item with bullet
#let cv-item(content) = {
  list(content)
}

// Contact info separator
#let contact-sep = [ | ]
