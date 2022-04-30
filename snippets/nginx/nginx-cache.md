---
layout: page
title: nginx 缓存
---

## 静态资源缓存

```
location ~* .(?:css|js)$ {
  expires 1d;
  add_header Cache-Control "public";
}
```
