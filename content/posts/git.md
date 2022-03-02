---
title: "Git常用"
type: post
date: 2022-03-02
tags: ["git","hugo"]
---

## 初始化

```bash
# 以当前目录为项目创建仓库
git init

# 创建一个目录作为项目仓库
git init [name]
```

## 提交至暂存区

```bash
git add [file]
git commit -m [msg]
```

## 分支

```bash
# 创建分支
git branch [name]

# 查看分支，-r：远程分支，-a：所有分支
git branch 参数

# 切换分支
git checkout 分支名

```

## 同步

```bash
# 添加远程仓库
git remote add [仓库] [仓库url]

# 同步
git push [仓库] [分支]

# 同步到本地
git pull [仓库] [分支]

```

## 其他

加上`--global`表示全局，不加就仅针对当前项目
```bash
# 合并分支
git branch -M/m [name]

# 缓存账号密码
git config --global credential.helper store/cache

#可以更改默认的密码缓存时限
git config --global credential.helper 'cache --timeout=36000'
```

## 创建仓库时会出现的提示

…or create a new repository on the command line
```bash
echo "# testing" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/JavaBullShit/testing.git
git push -u origin main
```

…or push an existing repository from the command line
```bash
git remote add origin https://github.com/JavaBullShit/testing.git
git branch -M main
git push -u origin main
```

## Hugo静态博客分支分工流程

使用工具生成静态博客，git初始化。
设置两个分支
 - sources：保存源文件
 - html：保存静态网页

源文件目录命令：
```bash
git init
git config ...(用户&邮箱$缓存)
git branch -M source
git add *
git commit -m "msg"
git remote add origin [url]
git push origin source
```

网页目录命令：
```bash
git init
git config ...(用户&邮箱$缓存)
git branch -M html
git add *
git commit -m "msg"
git remote add origin [url]
git push origin html
```

假设写了一篇文章，生成静态网页后。
在源文件目录执行:

```bash
git add * 
git commit -m "msg"
git push origin source
```
在网页文件目录执行:
```bash
git add * 
git commit -m "msg"
git push origin html
```

命令还是太多了，封装一下，分别封装`spush`和`hpush`两个命令
以后只需要做三步：
1. 写文章，hugo一下
2. 源文件目录，执行`spush`
3. 网页文件目录，执行`hpush`

还是有点麻烦，直接把spush和hpush合并更好


除了自动push到两个分支，还可以自动push到两个repo，不过还是用分支比较好


## 或者修改生成器

修改生成器，把所有的网页的生成目录全部生成在根目录，这样就不需要分支了，源文件和网页文件都存放在一起，不过这样有点乱，如果是mkdocs那种，就只有两个目录的就完全不会乱了。

如果修改之后出bug，还可以走另一条路，写个shell脚本，在hugo生成之后把public目录的文件全部移出来。
