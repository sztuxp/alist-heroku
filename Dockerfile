FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh

RUN apt update && apt install -y  curl unzip \
&&  chmod +x /alist.sh  \
&&  curl https://rclone.org/install.sh | bash \
chmod -R 777 /alist/config

CMD /alist.sh
