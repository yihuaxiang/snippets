---
title: nginx header 添加与删除
---

网站博客部署在`OSS`上，访问`oss`的页面时都会自动下载，原始是：响应头中添加了`x-oss-force-download`、`Content-Disposition: attachmeng`等字段，故通过`nginx`转发时需要对`header`进行操作

## 添加 header

```
location / {
    ...
    add_header X-Frame-Options SAMEORIGIN;
    add_header X-Content-Type-Options nosniff;
}
```

## 删除 header

```
location / {
    ...
    proxy_hide_header Content-Disposition;
    proxy_hide_header x-oss-force-download;
}
```