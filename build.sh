#!/bin/bash
# 生成部署产物到 public/ 目录（不影响 git 仓库里的文件）
mkdir -p public
cp index.html public/
cp -r libs public/
sed -i 's#https://unpkg.com/d3@7.8.5/dist/d3.min.js#/libs/d3.min.js#' public/index.html
sed -i 's#https://unpkg.com/markmap-lib@0.15.3/dist/browser/index.js#/libs/markmap-lib.js#' public/index.html
sed -i 's#https://unpkg.com/markmap-view@0.15.3/dist/browser/index.js#/libs/markmap-view.js#' public/index.html
