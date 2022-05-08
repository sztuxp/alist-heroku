FROM debian:10
MAINTAINER sz

ADD alist.sh /alist.sh

RUN apt update && apt install -y  curl unzip \
&&  chmod +x /alist.sh  \
&&  curl https://rclone.org/install.sh | bash \
&& curl -L https://github.com/Xhofe/alist/releases/latest/download/alist-linux-amd64.tar.gz -o alist.tar.gz \
&& tar -zxvf alist.tar.gz -C . \
&& rm alist.tar.gz \
&& mkdir -p /alist \
&& chmod +x alist-linux-amd64 \
&& mv alist-linux-amd64 ./alist/alist 

CMD /alist.sh
