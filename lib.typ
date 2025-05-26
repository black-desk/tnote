// SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
// SPDX-License-Identifier: MIT

#import "@preview/hydra:0.6.1": hydra

#let __cover_title(title) = {
  set text(
    size: 2em,
    weight: "bold",
  )

  title
}

#let __cover_authors(authors) = {
  set text(size: 1.2em)

  grid(
    columns: 2,
    rows: authors.len(),
    gutter: 0.5em,
    ..authors.flatten()
  )
}

#let __cover_create_date(date) = {
  set align(right)
  set text(size: 0.9em)
  (
    [此文档于]
      + date.display("[year]年[month padding:space]月[day padding:space]日")
      + [创建]
  )
}

#let __cover_compile_date() = {
  set align(right)
  set text(size: 0.9em)
  (
    [该版本于]
      + datetime
        .today()
        .display("[year]年[month padding:space]月[day padding:space]日")
      + [编译]
  )
}

#let __heading_offset() = {
  return it => context {
    let headings = query(selector(heading).before(here()))
    let last_heading = none
    if headings.len() > 0 {
      last_heading = headings.last()
    }
    let offset = 0
    if last_heading != none {
      offset = last_heading.level
    }
    set heading(offset: offset)
    it
  }
}

// tnote 函数用于生成带有标准格式的笔记文档
// 参数:
//   title: (字符串) 文档的标题
//   authors: (数组) 作者信息数组，格式为 (("姓名", "邮箱/单位"), ...)
//   date: (datetime) 文档创建日期，用于显示在标题页上
#let tnote(
  title: none,
  authors: none,
  date: none,
  font: "Noto Serif CJK SC",
) = {
  if (
    title == none
      and authors == none
      and date == none
      and font == "Noto Serif CJK SC"
  ) {
    return it => {
      show: __heading_offset()
      it
    }
  }

  return it => context {
    set text(
      lang: "zh",
      font: font,
    )

    set par(
      justify: true,
      first-line-indent: (
        amount: 2em,
        all: true,
      ),
    )

    set align(center + horizon)

    __cover_title(title)
    __cover_authors(authors)
    __cover_create_date(date)
    __cover_compile_date()

    set align(left + top)

    pagebreak()

    outline(indent: 0em)

    pagebreak()

    counter(page).update(1)

    set heading(numbering: "1.1")

    set page(
      header: context [
        #strong(title)
        #if hydra(1) != none {
          h(0.5em) + ">" + h(0.5em) + hydra(1)
        }
      ],
      numbering: "1 / 1",
    )

    set quote(
      block: true,
      quotes: false,
    )

    show quote: it => {
      show: __heading_offset()
      set pad(x: 5em)
      it
    }

    it
  }
}
