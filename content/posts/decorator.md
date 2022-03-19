---
title: "装饰器、修饰符"
date: 2022-03-17T06:38:22Z
---
### 装饰器
```python
import time

def counttime(func):
    def test(*args):
        start_time=time.time()
        end_time=time.time()
        func(*args)
        total_time=end_time-start_time
        print("total:{0:.2}s".format(total_time))
    return test

@counttime
def printer(s):
    for i in range(10000):print(s)

print("start")
printer("hello")
```

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
