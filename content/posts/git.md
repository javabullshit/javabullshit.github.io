---
title: "Git常用"
type: post
date: 2022-03-02
tags: ["git","hugo"]
---

## 初始化
```shell
# 以当前目录为项目创建仓库
git init

# 创建一个目录作为项目仓库
git init [name]
```

## 提交至暂存区
```shell
git add [file]
git commit -m [msg]
```

## 分支
```shell
# 创建分支
git branch [name]

# 查看分支，-r：远程分支，-a：所有分支
git branch 参数

# 切换分支
git checkout 分支名

```

## 同步
```shell
# 添加远程仓库
git remote add [仓库] [仓库url]

# 同步
git push 仓库 分支

```

## 其他
加上`--global`表示全局，不加就仅针对当前项目
```shell
# 合并分支
git branch -M/m [name]

# 缓存账号密码
git config --global credential.helper store/cache

#可以更改默认的密码缓存时限
git config --global credential.helper 'cache --timeout=36000'
```

