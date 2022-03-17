---
title: "把类当成方法使用"
date: 2022-03-16T06:43:43Z
---
```python
class people():
    def __init__(self,name):
        self.name=name
    def __call__(self):
        print("my name is {0.name}".format(self))

me=people("john")
me()
```
output:
```bash
my name is john
```
