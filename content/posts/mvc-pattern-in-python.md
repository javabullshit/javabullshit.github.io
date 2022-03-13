---
title: "MVC Pattern in Python"
date: 2022-03-13T10:32:23Z
tags: ["mvc"]
categories: ["python"]
---

### MVC Example

module:
```python
class QuoteModel:
    def get_quote(self, n):
	try:
	    value = quote[n]
	except:
	    value = "Not found!"
	return value
```

view:
```python
class QuoteTerminalController:
    def show(self, quote):
	print("")
```

未完结
