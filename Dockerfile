FROM ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install gnupg ubuntu-keyring software-properties-common openssh-client sudo grub2 wget squashfs-tools xorriso build-essential
