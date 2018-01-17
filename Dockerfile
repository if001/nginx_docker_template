FROM ubuntu:16.10

RUN \
apt-get update && \

# nginx
apt-get install -y nginx && \

# varnish
apt-get install -y varnish && \

# time settings
apt-get install -y ntp &&\
cp /etc/localtime /etc/localtime.utc &&\
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
echo "server ntp.nict.jp" >> /etc/ntp.conf &&\
echo "server ntp.nict.jp" >> /etc/ntp.conf &&\
echo "server ntp.nict.jp" >> /etc/ntp.conf

# Expose orts.
EXPOSE 80
EXPOSE 443
