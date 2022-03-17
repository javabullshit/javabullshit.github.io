---
title: "制定类：更多的魔法方法"
date: 2022-03-16T06:52:22Z
---
官方文档： https://docs.python.org/3/reference/datamodel.html#special-method-names

中文： https://docs.python.org/zh-cn/3/reference/datamodel.html#special-method-names

### `__get__`
```python
class aa():
    def __get__(self):
        return self.name

class bb():
    def __init__(self):
        self.ca=aa()

b=bb()
print(b.ca)
```
output:
```bash
<__main__.aa object at 0x7e3992d570>
```
