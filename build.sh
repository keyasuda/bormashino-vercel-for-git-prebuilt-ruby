#!/usr/bin/bash

yum install -y gcc openssl-devel readline-devel zlib-devel make tar libyaml-devel xz curl shadow-utils util-linux sudo git

useradd -b / -m vercel
sudo -u vercel /build-ruby.sh

tar cf - /vercel/.rbenv/versions | xz -T 0 > /output/versions.tar.xz
