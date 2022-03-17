---
title: "`__new__`的使用"
date: 2022-03-17T09:07:34Z
---
 - 准确来说，`__new__`才是构造函数
 - `__new__`执行在`__init__`之前
 - 如果`__new__`不返回一个cls实例，则`__init__`不会被执行

```python
class A():
    def __new__(self,*args,**kwargs):
        print("new")
        return object.__new__(self)
    def __init__(self):
        print("init")

a=A()
```
output:
```bash
new
init
```

单例模式可以用`__new__`来实现： https://javabullshit.github.io/posts/singleton/
