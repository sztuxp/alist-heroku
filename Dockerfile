FROM debian:10
MAINTAINER sz

ADD alist.sh /alist.sh

RUN apt update && apt install -y  curl unzip \
&&  chmod +x /alist.sh  \
&&  curl https://rclone.org/install.sh | bash \
&& curl -L https://github.com/Xhofe/alist/releases/latest/download/alist-linux-amd64.tar.gz -o alist.tar.gz \
&& tar -zxvf alist.tar.gz -C . \
&& chmod +x alist-linux-amd64 \
&& mkdir -p alist \
&& mv alist-linux-amd64 ./alist/alist \
&& mkdir -p /alist/config/temp 

CMD /alist.sh
