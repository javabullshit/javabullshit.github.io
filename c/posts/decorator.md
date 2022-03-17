---
title: "装饰器、修饰符"
date: 2022-03-17T06:38:22Z
draft: true
---

### @classmethod
无需实例化即可调用，实例不可用
```python
class C(object):
    @classmethod
    def f():
        print('hello');
C.f()
```
### @staticmethod
无需实例化即可调用，实例化后仍然可用
```python
class C(object):
    @staticmethod
    def f():
        print('hello');
C.f()
c=C()
c.f()
```
