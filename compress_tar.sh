#!/bin/bash

for file in *.tar; do
    # 提取文件名，去除.tar 后缀，并去除冒号
    new_name=$(echo "$file" | sed 's/\.tar$//' | sed 's/:/_/g')
    tar -czvf "${new_name}.tar.gz" "$file"
done
