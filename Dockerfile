FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh
RUN  chmod +x /alist.sh 
ADD rclone-v1.58.1-linux-amd64.zip /rclone-v1.58.1-linux-amd64.zip
#RUN yum install unzip
#RUN unzip rclone-v1.58.1-linux-amd64.zip && RUN  chmod +x /rclone
CMD /alist.sh
