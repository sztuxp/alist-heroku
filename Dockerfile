FROM debian:10
MAINTAINER sz

ADD alist.sh /alist.sh


RUN apt update && apt install -y  curl unzip \
&&  chmod +x /alist.sh  \
&&  curl https://rclone.org/install.sh | bash \
&& curl -L  "https://github.com/Xhofe/alist/releases/download/v2.5.0/alist-linux-amd64.tar.gz" -o alist.tar.gz" \
&& tar -zxvf alist.tar.gz \
&& chmod +x alist-amd64 \
&& mkdir -p alist \
&& mv alist-amd64 ./alist/alist

CMD /alist.sh
