---
title: "重✍️线程构造方法"
date: 2022-03-14T14:00:45Z
---
继承于threading，重写构造方法：
```python
import threading

class th(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        print("__init__")

    def run(self):
	    print("run")

t=th()
t.start()
t.join()
```
output:
```bash
__init__
run
```
