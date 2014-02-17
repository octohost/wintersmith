FROM octohost/wintersmith-nginx

WORKDIR /srv/www

RUN npm install wintersmith-ejs -g
ADD . /srv/www/
RUN wintersmith build

EXPOSE 80

CMD nginx