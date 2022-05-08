FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh
ADD rclone-v1.58.1-linux-amd64.zip /rclone-v1.58.1-linux-amd64.zip
RUN  chmod +x /alist.sh 
RUN apk --no-cache add curl zip unzip
RUN unzip -d / /rclone-v1.58.1-linux-amd64.zip &&  chmod +x /rclone-v1.58.1-linux-amd64/rclone 
RUN mv /rclone-v1.58.1-linux-amd64/rclone /rclone
CMD /alist.sh
