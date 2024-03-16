FROM docker.io/centos:7

RUN yum update -y

RUN yum install httpd -y

RUN mkdir /kunal/web/html -p

RUN echo "Welcome to Custom-Webpage" > /kunal/web/html/index.html

RUN sed -i 's%/var/www/html%/kunal/web/html%' /etc/httpd/conf/httpd.conf

#RUN /etc/httpd/conf/httpd.conf
#RUN echo "this is custom web-server" > /var/www/html/index.html
CMD [ "httpd", "-D", "FOREGROUND" ]

