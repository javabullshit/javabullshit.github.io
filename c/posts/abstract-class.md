---
title: "抽象类"
date: 2022-03-17T06:27:09Z
---
抽象类不可实例化，被abstractclassmethod修饰的函数必须重写
```python
from abc import ABCMeta,abstractclassmethod

class A(metaclass=ABCMeta):
    def __init__(self):
        pass
    @abstractclassmethod
    def say(self,s):
        pass

class B(A):
    def __init__(self):
        pass
    def say(self,s):
        print(s)

b=B()
b.say("hello")
```
output:
```bash
hello
```

