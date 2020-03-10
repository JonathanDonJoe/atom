# VERSION:        0.1
# DESCRIPTION:    Image to build Atom and create a .rpm file

# Base docker image
FROM node:10

# Install dependencies
# RUN yum install -y \
RUN rpm --rebuilddb && yum install -y \

    make \
    gcc \
    gcc-c++ \
    glibc-devel \
    git-core \
    libsecret-devel \
    rpmdevtools

RUN npm install -g npm --loglevel error

ADD . /atom
WORKDIR /atom
