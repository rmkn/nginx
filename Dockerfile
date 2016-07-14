FROM centos:6
MAINTAINER rmkn
RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install nginx

COPY security.sh /tmp/security.sh
RUN /tmp/security.sh && rm /tmp/security.sh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

