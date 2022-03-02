---
title: "Hugo笔记"
date: 2022-03-02T10:50:27Z
type: post
tags: ["hugo","utterances"]
---

## 文档

https://gohugo.io/documentation/

## 评论插件的选择

几个不错的评论插件:
 - [Valine](https://valine.js.org/): 传统的昵称、邮箱、网址式
 - [utterances](https://utteranc.es/): 配github登录评，论置起来最简单
 - [gitalk](https://gitalk.github.io/): github登录评论，美观
 - [disqus](https://disqus.com/): 老外用的多，有收费功能

### 人生苦短，我用utterances

1. 在github上创建一个公开的repository
2. 在github上安装uterances app：https://github.com/apps/utterances，安装时选择刚才创建的repository
3. 进入官网，填入刚才的repository，然后复制下面的代码填到hugo模板里的相对应位置，一般在是`post.html`里面找
```html
<script src="https://utteranc.es/client.js"                                               repo="javabullshit/comments"
        issue-term="pathname"
        theme="github-light"                     crossorigin="anonymous"
        async>
</script>
```

4. 编辑config.toml，加入以下内容：
```
[params.utteranc]
enable = true
repo = "javabullshit/comments"
issueTerm = "pathname"
```

进入官网，

## 页内超链接新标签页打开

需要修改主题文件夹中的3个文件
 - head.html
 - post.html
 - page.html

在`<body>`之前加入javascript代码：
```html
<script type="text/javascript">
	function addaTarget(id) {
		var aTags = document.getElementById(id).getElementsByTagName("a");
		for (i = 0; i < aTags.length; i++) {
		var aTags_item = aTags[i];
		aTags_item.target = "_blank";
    }
}
</script>
```

在文章页和独立页的html文件中找到`{{ .Content }}`，并在把它包裹住的`<div>`加入一个名为`post-content-id`的id,通常是这样：
```html
<div class="post-content" id="post-content-id">
   {{ .Content }}
</div>
```

然后在上述`</div>`标签后面加入代码
```html
<script type="text/javascript">
	addaTarget("post-content-id");
</script>
```

## Git结构

### 方案1

目录及分支
 - `./`: `source`
 - `public`: `html`

