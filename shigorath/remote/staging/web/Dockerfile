FROM shared_app

RUN apt-get -y install nginx

RUN rm -rf /usr/share/nginx/html
RUN rm /etc/nginx/sites-available/default

ADD public /usr/share/nginx/html

ADD shigorath/staging/web/default.conf /etc/nginx/conf.d/default.conf
ADD shigorath/staging/web/nginx.conf /etc/nginx/nginx.conf

CMD service nginx start
