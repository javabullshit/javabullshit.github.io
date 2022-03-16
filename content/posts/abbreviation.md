---
title: "缩短你的垃圾🐔代码"
date: 2022-03-16T13:27:29Z
---
```python
L = []
n = 1
while n <= 99:
    L.append(n)
    n = n + 2
```
可用下面多种方法实现缩短:
```python
[i for i in range(1,100,2)]

list(range(1, 100, 2))

list(range(1, 100))[::2]

list(range(1, 100)[::2])

list(range(100))[1::2]

[2*x-1 for x in range(1,51)]
```
