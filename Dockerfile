FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh
ADD rclone-v1.58.1-linux-amd64.zip /rclone-v1.58.1-linux-amd64.zip
RUN  chmod +x /alist.sh 
RUN apk --no-cache add curl zip unzip
RUN unzip /rclone-v1.58.1-linux-amd64.zip &&  chmod +x /rclone
CMD /alist.sh
