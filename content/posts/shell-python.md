---
title: "Shell与Python合体"
date: 2022-03-12T04:30:09Z
---
```bash
script="for i in range(1,10): print(i)"
python -c """$script"""
```

带参数：
```bash
script="
import sys
a=sys.argv
for i in a: print(i)
"
python -c """$script""" hello bash
```
运行结果：
```bash
-c
hello
bash
```
