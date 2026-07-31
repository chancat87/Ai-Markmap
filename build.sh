#!/bin/bash
# 部署时把外部 CDN 链接替换为本地文件（只影响部署产物，不动 git 仓库）
sed -i 's#https://unpkg.com/d3@7.8.5/dist/d3.min.js#/libs/d3.min.js#' index.html
sed -i 's#https://unpkg.com/markmap-lib@0.15.3/dist/browser/index.js#/libs/markmap-lib.js#' index.html
sed -i 's#https://unpkg.com/markmap-view@0.15.3/dist/browser/index.js#/libs/markmap-view.js#' index.html
