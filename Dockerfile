FROM debian:9
MAINTAINER sz

ADD alist.sh /alist.sh

RUN apt update && apt install -y  curl unzip \
&&  chmod +x /alist.sh  \
&&  curl https://rclone.org/install.sh | bash \
&& curl -fsSL "https://nn.ci/alist.sh" | bash -s install /alist

CMD /alist.sh
