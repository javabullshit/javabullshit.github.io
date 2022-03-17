---
title: "python反射"
date: 2022-03-17T08:49:57Z
---
```python
class Website():
    def index(self):
        print("index page")

    def archive(self):
        print("archive page")

    def about(self):
        print("about page")


site = Website()

while True:
    chioose = input("请选择页面：")
    if hasattr(site, chioose):
        f = getattr(site, chioose)
        f()
    elif chioose == "exit":
        break
    else:
        print("404")
```
output:
```bash
请选择页面：about
about page
请选择页面：index
index page
请选择页面：hjki
404
请选择页面：exit
```

