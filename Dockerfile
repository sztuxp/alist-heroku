FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh
RUN  chmod +x /alist.sh 
RUN apk --no-cache add curl zip unzip
ADD https://downloads.rclone.org/v1.58.1/rclone-v1.58.1-linux-amd64.zip /
RUN unzip -d / /rclone-v1.58.1-linux-amd64.zip &&  chmod +x /rclone-v1.58.1-linux-amd64/rclone 
RUN mv /rclone-v1.58.1-linux-amd64/rclone /bin/rclone
CMD exec /alist.sh
