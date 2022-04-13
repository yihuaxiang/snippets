---
title: shell 并发执行
---

并发执行`curl`

```shell
xargs -I % -P 8 curl -X POST  "https://fudongdong.com"  < <(printf '%s\n' {1..4})
```
