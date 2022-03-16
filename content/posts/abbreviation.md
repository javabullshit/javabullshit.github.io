---
title: "缩短你的垃圾代码"
date: 2022-03-16T13:27:29Z
---
```python
L = []
n = 1
while n <= 99:
    L.append(n)
    n = n + 2
```
可用下面三种方法实现缩短:
```python
list(range(1, 100, 2))

list(range(1, 100))[::2]

list(range(1, 100)[::2]) # slicing of range
```
