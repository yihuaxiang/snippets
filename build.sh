#!/bin/bash

 jekyll build


./bin/ossutilmac64 cp ./_site oss://fudongdong-snippets  --access-key-secret=XXXX --access-key-id=XXXX -e oss-cn-beijing.aliyuncs.com --recursive --force
