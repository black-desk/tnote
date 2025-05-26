// SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
// SPDX-License-Identifier: MIT

// 演示include功能用的文件，整个文件都可以删除

#import "@black-desk/tnote:0.1.0": tnote
#show: tnote()

#import "@preview/kouhu:0.1.0": kouhu

= #kouhu(length: 5, offset: 44)

#kouhu(length: 200, offset: 12)

== #kouhu(length: 10, offset: 34)


+ #kouhu(length: 5, offset: 7)
+ #kouhu(length: 4, offset: 38)
+ #kouhu(length: 2, offset: 13)

#kouhu(length: 300, offset: 24)

- #kouhu(length: 10, offset: 22)
- #kouhu(length: 9, offset: 15)
- #kouhu(length: 3, offset: 9)

#quote[
  = #kouhu(length: 3, offset: 42)

  #kouhu(length: 100, offset: 34)
]
