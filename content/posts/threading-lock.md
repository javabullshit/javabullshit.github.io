---
title: "线程🔒"
date: 2022-03-14T13:55:39Z
---

```python
import threading
import time

lock=threading.Lock()

def p(s):
    lock.acquire()
    for i in range(0,3):
        print(s)
        time.sleep(1)
    lock.release()

t1=threading.Thread(target=p,args=("t1",))
t2=threading.Thread(target=p,args=("t2",))

t1.start()
t2.start()
```
output:
```bash
t1
t1
t1
t2
t2
t2
```
