FROM hbaltz/rpi-lap

MAINTAINER Hugo Baltz <hugobaltz@gmail.com>

#ENV http_proxy http://10.0.4.2:3128
#ENV https_proxy https://10.0.4.2:3128

RUN apt-get update && apt-get install -y php5-pgsql postgresql-client \
  && apt-get -y --purge autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*
