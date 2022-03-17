---
title: "Python单例模式"
date: 2022-03-17T08:19:26Z
---
```python
class A():
    __instance = None
    # __flag作为私有的静态变量用于防止init多次执行
    __flag = False

    def __new__(cls, *args, **kwargs):
        print("new")
        if cls.__instance is None:
            cls.__instance = super().__new__(cls)
        return cls.__instance

    # 如果 __new__() 未返回一个 cls 的实例，则新实例的 __init__() 方法就不会被执行。

    def __init__(self):
        if not A.__flag:
            print("init只会执行一次")
            A.__flag = True


a = A()
b = A()
print(a)
print(b)
```
output:
```bash
new
init只会执行一次
new
<__main__.A object at 0x7cb19773d0>
<__main__.A object at 0x7cb19773d0>
```
可以看到a和b指向了同一地址
