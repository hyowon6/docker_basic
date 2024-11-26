FROM quay.io/centos/centos:stream9 

RUN yum -y install httpd php && yum clean all

VOLUME /var/www/html /var/log/httpd 

COPY index.html info.php /var/www/html
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
