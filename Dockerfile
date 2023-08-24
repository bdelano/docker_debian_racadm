FROM python:3.9-slim-bookworm

RUN apt-get update
RUN apt-get install -y bash openssl


COPY openssl.cnf /etc/ssl/openssl.cnf
COPY idractools /idractools
RUN cd /idractools && \
  dpkg -i *.deb && \
  ln -s /usr/lib/x86_64-linux-gnu/libssl.so.3 /usr/lib/x86_64-linux-gnu/libssl.so && \
  ln -s /opt/dell/srvadmin/bin/idracadm7 /usr/local/sbin/racadm
