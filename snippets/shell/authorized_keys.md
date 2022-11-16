---
layout: page
title: ssh 免密登录
---

在登录服务器的时候经常需要输入密码，其实可以通过上传公钥的方式来实现免密登录，以下脚本可实现自动将本地公钥上传到目标服务器上。

```shell
ssh-copy-id -i ~/.ssh/id_rsa.pub 账号@服务器IP
```

如果本地尚未生成公钥私钥的话，可以通过以下命令生成。

```shell
ssh-keygen -t rsa
```

