---
title: 持续化集成部署
date: 2018-07-18 01:17:25
tags: 笔记
categories: 技术
---
** 基本思路 **

本地更新Source 文件，通过 git push 至 github 项目的 gh-pages 分支；（手动）

Travis检测到 gh-pages 产生 push，拉取项目 ci分支配置信息，重新生成；（自动）

将重新生成的静态文件，加入 git 信息，然后强制推送至 master 分支，完成重新部署。（自动）

