FROM centos:6
MAINTAINER rmkn
RUN cp -p /usr/share/zoneinfo/Japan /etc/localtime && echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock
RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install nginx

COPY security.sh /tmp/security.sh
RUN /tmp/security.sh && rm /tmp/security.sh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

