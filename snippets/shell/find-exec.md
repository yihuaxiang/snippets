---
layout: page
title: find 并执行其他命令
---

先通过`find`查找文件并对文件执行特定命令

通过`-exec`选项实现

```shell
find . -type f -exec ls -l {} \;
```

通过`xargs`实现
```shell
find . -maxdepth 1 -name "*.log" | xargs -i  du -hs {}
```
