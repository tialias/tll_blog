#!/bin/bash

export TZ='Asia/Shanghai'
git ls-files -z | while read -d '' path; do 
    touch -d "$(git log -1 --format="@%ct" "$path")" "$path";
done
hexo generate
