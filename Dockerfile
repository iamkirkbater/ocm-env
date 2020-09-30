FROM fedora:latest

ARG osv4client=openshift-client-linux-4.3.12.tar.gz
ENV osv4client=$osv4client

RUN yum -y install \
    bash-completion \
    findutils \
    fzf \
    git \
    golang \
    jq \
    make \
    procps-ng \
    rsync \
    sshuttle \
    vim-enhanced \
    wget;

RUN yum clean all;

ADD ./container-setup /container-setup

WORKDIR /container-setup/install

RUN ./install.sh I-am-in-container

WORKDIR /root/
