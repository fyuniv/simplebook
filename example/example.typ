#import "lib.typ": *



#show: simplebook.with(
  title: "A Simple Book Template",
  author: "Author",
  affiliation: text(fill: orange)[University],
  date: none,
  // year: "Year",
  version: "0.1.0",
  theme_colors: (
    primary_color: blue,
    secondary_color: green,
  ),
  rfoot: "right footer",
  lfoot: image("by-nc-sa.svg", height: 1em)
)


// Preface
#preface(preface_title: [Preface])[
  #lorem(100)
]

// Outline
#outline()
// Edit this content to your liking


#mainmatter

#show heading: it => {
  set text(fill: red)
  it
}

= Introduction

This is a simple book template that has basic feature of formal book.

== Some Features

+ Title color can be set with the `main-color` property.

+ Footers are customable except those pages before main matter.

+ A function `mainmatter()` can be use to reset page numbers and styles.

+ Headers are customable except the starting page of a chapter, or a page before main matter.

+ New Chapters always starts on an odd page.

== Remarks

+ The default outline depth is 2.

+ Level 3 or higher headings are in their default style.

+ One can change the default chapter and section prefix by

  ```typst
  #set heading(supplment: [your prefix])
  ```

#blankpage

== Something Else

Any comments and suggestions are welcome.

= Enjoy!

#lorem(500)

#pagebreak()

== Enjoy a subsection! $theta$

#lorem(600)


= Another Chapter


#lorem(200)

= Chapter 5

#lorem(200)


#heading(level: 1, numbering: none, supplement: none)[Appendix A]