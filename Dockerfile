FROM sbwml/alist:latest
MAINTAINER sz

ADD alist.sh /alist.sh
RUN  chmod +x /alist.sh 

CMD /alist.sh
