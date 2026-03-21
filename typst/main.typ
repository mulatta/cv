// CV - Seungwon Lee
// Main entry point

#import "styles.typ": *
#import "data.typ": cv
#import "sections/header.typ": header
#import "sections/education.typ": education
#import "sections/research.typ": research-experience, research-interest
#import "sections/experience.typ": experience
#import "sections/skills.typ": skills
#import "sections/oss.typ": oss
#import "sections/awards.typ": awards

// Page setup
#set page(
  paper: "a4",
  margin: page-margin,
  footer: context {
    let total = counter(page).final().first()
    if total > 2 {
      set align(center)
      set text(size: 9pt)
      [#counter(page).display() / #total]
    }
  },
)

// Text setup - Times New Roman
#set text(font: main-font, size: main-size)

#set par(leading: leading, spacing: leading)

// Link styling - black, no underline
#show link: it => text(fill: link-color)[#it]

// Document content
#header(cv)

#v(header-body-spacing)

#education(cv.education)

#research-interest(cv.at("research-interest"))

#research-experience(cv.at("research-experience"))

#experience(cv.experience)

#skills(cv.skills)

#oss(cv.oss)

#awards(cv.awards)
