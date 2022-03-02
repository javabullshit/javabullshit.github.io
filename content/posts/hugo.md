---
title: "Hugo笔记"
date: 2022-03-02T10:50:27Z
type: post
tags: ["hugo"]
---

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
