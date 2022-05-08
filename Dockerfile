FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh

RUN  chmod +x /alist.sh  \
&&  curl https://rclone.org/install.sh | bash

CMD /alist.sh
