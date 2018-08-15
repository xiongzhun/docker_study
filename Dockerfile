# Dockerfile for building CentOS images
FROM       centos:centos6.7
ENV TZ "Asia/Shanghai"
ENV TERM xterm
Run yum clean all && yum makecache
Run yum install -y pwgen openssh-server git  supervisor python-pip
RUN yum install -y wget curl tar bzip2  vim-enhanced sudo yum-utils 
Run yum install -y npm git
Run git clone -b ci https://github.com/xiongzhun/docker_study.git /blog
Run cd /blog && git pull
Run git clone -b gh-pages https://github.com/xiongzhun/docker_study.git
Run mkdir source && nv docker_study/source/* source
Run npm install
Run hexo g && Hexo d
