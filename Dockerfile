# Dockerfile for building CentOS images
FROM       centos:centos6.7
ENV TZ "Asia/Shanghai"
ENV TERM xterm
Run yum clean all && yum makecache
Run yum install -y pwgen openssh-server git  supervisor python-pip
RUN yum install -y wget curl tar bzip2  vim-enhanced sudo yum-utils 
Run yum install -y npm git
Run git clone -b ci https://github.com/xiongzhun/xiongzhun.github.io.git /blog
Run cd /blog && git pull
Run git clone -b gh-pages https://github.com/xiongzhun/xiongzhun.github.io.git
Run mkdir source && mv docker_study/source/* source
mv source/_config.yml .
Run npm install
Run hexo g && Hexo d
