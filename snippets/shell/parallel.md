---
title: shell 并发执行
---

并发执行`curl`

```shell
xargs -I % -P 8 curl -X POST  "http://fudongdong.com"  < <(printf '%s\n' {1..4})
```
