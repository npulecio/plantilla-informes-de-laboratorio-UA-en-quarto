

#let article(
  title: none,
  subtitle: none,
  authors: none,
  date: none,
  abstract: none,
  abstract-title: none,
  programa: none,
  asignatura: none,
  sede: none,
  linea-seccion: true,
  cols: 1,
  margin: (x: 1.25in, y: 1.25in),
  paper: "us-letter",
  lang: "es",
  region: "US",
  font: "libertinus serif",
  fontsize: 12pt,
  title-size: 1.5em,
  subtitle-size: 1.25em,
  heading-family: "libertinus serif",
  heading-weight: "bold",
  heading-style: "normal",
  heading-color: black,
  heading-line-height: 0.65em,
  sectionnumbering: none,
  pagenumbering: "1",
  toc: false,
  toc_title: none,
  toc_depth: none,
  toc_indent: 1.5em,
  doc,
) = {
  set page(
    paper: paper,
    margin: margin,
    numbering: pagenumbering,
    header: grid(
      columns: (1fr, 1fr),
      align: (left + horizon, right + horizon),
      image("logo_ua1.jpeg", height: 1.15cm),
      image("logo_ua2.jpeg", height: 1.15cm),
    )
  )
  set par(justify: true)
  set text(lang: lang,
           region: region,
           font: font,
           size: fontsize)
  set heading(numbering: sectionnumbering)
  show heading: set align(center)
  show heading.where(level: 3): set align(left)
  show heading: it => {
    if it.level == 1 and linea-seccion != "false" and linea-seccion != false {
      block(width: 100%, breakable: false)[
        #v(0.8em)
        #line(length: 100%, stroke: 0.5pt + gray)
        #v(0.2em)
        #it
      ]
    } else {
      it
    }
  }
  if title != none {
    align(center)[#block(inset: 2em)[
      #set par(leading: heading-line-height)
      #if (heading-family != none or heading-weight != "bold" or heading-style != "normal"
           or heading-color != black) {
        set text(font: heading-family, weight: heading-weight, style: heading-style, fill: heading-color)
        text(size: title-size)[#title]
        if subtitle != none {
          parbreak()
          text(size: subtitle-size)[#subtitle]
        }
      } else {
        text(weight: "bold", size: title-size)[#title]
        if subtitle != none {
          parbreak()
          text(weight: "bold", size: subtitle-size)[#subtitle]
        }
      }
    ]]
  }


  if programa != none {
  set text(size: 10pt, style: "italic")
  align(center)[Programa de #programa -- Universidad del Atlántico]
  }

  if authors != none {
    set text(size: 10pt, style: "italic")
    let count = authors.len()
    align(center)[#authors.map(authors => authors.name).join(", ")]
  }

  let info = (asignatura, sede, date).filter(x => x != none)
  if info != (){
  set text(size: 10pt, style: "italic")
  align(center)[#info.join(", ")]}

  if abstract != none {
    block(inset: 2em)[
    #text(weight: "semibold")[#abstract-title] #h(1em) #abstract
    ]
  }

  if toc {
    let title = if toc_title == none {
      auto
    } else {
      toc_title
    }
    block(above: 0em, below: 2em)[
    #outline(
      title: toc_title,
      depth: toc_depth,
      indent: toc_indent
    );
    ]
  }

  if cols == 1 {
    doc
  } else {
    columns(cols, doc)
  }
}

#set table(
  inset: 6pt,
  stroke: none
)
