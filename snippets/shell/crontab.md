---
layout: page
title: crontab
---

`centos 8`默认已安装`crontab`，通过`crontab`可以设置周期性调度任务、启动时任务。

`crontab`中的任务分为用户任务，`root`账号任务。

## 用户任务

查看用户任务
```shell
crontab -l
```

编辑用户任务
```shell
crontab -e
```

清空任务
```shell
crontab -r
```

注：用户任务配置在目录`/var/spool/cron`下


## `root` 账号任务
`root`账号任务配置在`/etc/crontab`中，可配置定时任务，也可配置系统启动时需要执行的任务

```shell
SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root

# For details see man 4 crontabs

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed

@reboot root /home/path/start.sh # 系统启动时执行的任务
```

## 查看日志

`crontab` 日志目录为 `/var/log/cron`


## 其他类似方案

### pm2

`pm2`是基于`nodejs`的进程管理工具，可以配置`shell`执行周期性任务，
也可以用来管理开机自启任务（通过保存进程状态，在开机时恢复进程状态，这一点上比`crontab`好用）。

### chkconfig


参考文档： [chkconfig](https://www.linuxjournal.com/article/4445)
