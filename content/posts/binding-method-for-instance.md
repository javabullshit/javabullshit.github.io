---
title: "给类的实例绑定方法"
date: 2022-03-15T07:47:50Z
---
```python
from types import MethodType

class people():
    def __init__(self):
        print("cls")

def eat(self,shit):
    print("I'm eating "+shit)

def say(self,shit):
    print(shit)

you=people()
me=people()

# 仅给单个实例绑定方法
you.eat=MethodType(eat,you)
you.eat("shit")

# 给所有实例绑定方法
people.say=MethodType(say,people)
you.say("f**k.")
me.say("f**k you!")
```
output:
```bash
cls
cls
I'm eating shit
f**k.
f**k you!
```
