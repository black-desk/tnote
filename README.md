<!-- SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn> -->
<!-- SPDX-License-Identifier: MIT -->

# TNote - 中文笔记排版工具

TNote 是一个基于 [Typst](https://typst.app/) 的中文笔记排版工具，用于创建具有一致格式的中文笔记文档。

## 功能特点

- 标准化的中文笔记排版格式
- 自动生成封面页，包含标题、作者信息、创建日期和编译日期
- 自动生成目录页
- 页眉显示文档标题和章节信息
- 段落自动首行缩进
- 保持标题级别的一致性
- 内置引用外部文件功能

## 安装

```bash
make install
```

## 使用方法

```typst
#import "@black-desk/tnote:0.1.0": tnote

#show: tnote(
  title: "文档标题",
  authors: (
    ("作者名", "<邮箱>"),
    // ("作者名2", "<邮箱2>"),
  ),
  date: datetime.today(), // 创建文档的日期
)

= 第一章标题

这里是您的内容...
```

模版里有更多用法和样式：

```bash
typst init @black-desk/tnote:0.1.0 DIR
```

## 许可证

此项目使用 MIT 许可证开源。欢迎贡献代码或提出问题。
