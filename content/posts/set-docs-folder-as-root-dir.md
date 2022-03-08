---
title: "github pages设置仓库子目录为网站根目录，静态博客修改默认渲染路径"
date: 2022-03-02T23:33:06Z
---

昨天还在想静态博客部署的问题，源文件和生成的网页文件怎么处理，今天找到了方案。

好像很多用户都没有尝试过这个操作

在github pages里可以把子目录docs设置为网站根目录，这样子，一个repository就能同时存放源文件和网页文件而不用分支了😎

但是市面上的静态博客生成器默认输出路径都不是docs文件夹，所以需要把静态博客生成器的渲染路径修改为docs，然后就可以直接把整个静态博客推送到repository了，没有任何繁杂的操作！


## 修改渲染路径的方法

基本都是在配置文件里加入属性指定文件目录
 - hugo: `publishDir = dir`
 - jekyll: `destination dir`
 - hexo: `public_dir: 'dir'`
 - pelican: `OUTPUT_PATH = 'output/'`


