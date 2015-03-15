FROM shared_app

RUN apt-get -y install nginx

RUN rm -rf /usr/share/nginx/html
RUN rm /etc/nginx/sites-available/default

ADD application/public /usr/share/nginx/html

ADD default.conf /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/nginx.conf

CMD service nginx start
