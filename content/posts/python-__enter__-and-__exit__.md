---
title: "Python上下文管理"
date: 2022-03-16T18:13:02Z
---
```python
class people():
    def __init__(self,name):
        self.__name=name
    def __enter__(self):
        print('enter')
    def __exit__(self,exc_ty, exc_val, tb):
        print('exit')
    def say(self,s):
        print(s)

me=people("john")

with me:
   me.say('hello') 
```
output:
```bash
enter
hello
exit
```
