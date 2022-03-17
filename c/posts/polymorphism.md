---
title: "python中的多态"
date: 2022-03-17T08:26:56Z
---
python的多态支持非常有限
不知道这是不是对的
```python
class Human():
    def eat(self):
        print("人类进食")


class Animal():
    def eat(self):
        print("动物进食")


def eat(ojb):
    ojb.eat()


h, a = Human(), Animal()
for i in [h, a]:
    eat(i)
```
output:
```bash
人类进食
动物进食
```

