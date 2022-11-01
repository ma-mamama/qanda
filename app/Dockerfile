FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick libmagick++-dev

##コンテナが起動できるようにnginxをデーモン実行する
RUN apt-get install -y nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]