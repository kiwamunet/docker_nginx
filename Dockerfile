FROM nginx

MAINTAINER shi3z

ADD ./www /root/www
ADD ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir /root/logs
RUN chmod 755 -R /root

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
