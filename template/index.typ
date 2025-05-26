// SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
// SPDX-License-Identifier: MIT

// TNote模块没有被发布到Typst Universe，
// 如果你需要安装该模块请访问以下地址：
// https://github.com/black-desk/tnote
#import "@black-desk/tnote:0.1.0": tnote

// 提供演示用的占位符的模块，可以移除
#import "@preview/kouhu:0.1.0": kouhu

#show: tnote(
  title: "TNote文档模板",
  authors: (
    ("陈麟轩", "<me@black-desk.cn>"),
  ),
  date: datetime.today(),
)

= #kouhu(length: 5, offset: 0)

#kouhu(length: 200, offset: 18)

== #kouhu(length: 10, offset: 32)

#kouhu(length: 300, offset: 30)

#quote[
  #include "file-to-include.typ"

  = #kouhu(length: 3, offset: 27)

  #kouhu(length: 100, offset: 50)
]

#include "file-to-include.typ"

- #kouhu(length: 10, offset: 20)
- #kouhu(length: 9, offset: 10)
- #kouhu(length: 3, offset: 8)

+ #kouhu(length: 5, offset: 5)
+ #kouhu(length: 4, offset: 2)
+ #kouhu(length: 2, offset: 1)

