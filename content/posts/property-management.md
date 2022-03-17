---
title: "property与setter：属性管理"
date: 2022-03-16T18:36:23Z
---
```python
class people():
    def __init__(self,name):
        self.__name=name

    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self,name):
        if not isinstance(name,str):
            raise TypeError('expected a string')
        self.__name=name

me=people("john")
print(me.name)
me.name="tony"
print(me.name)
```
output:
```bash
john
tony
```
