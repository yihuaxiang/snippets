---
layout: page
title: nginx 注入内容
---

通过`nginx`进行反向代理的时候可以通过`sub_filter`指令进行内容替换、内容注入

```Nginx
location / {
  ...
  sub_filter </head>
      '<style>.navbar {display: none;} .chatroom {display: none;}</style></head>';
  sub_filter_once on;
  ...
}
```

