FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN apt update && apt install -y \
    wget git python3-dev python3-pip \ 
    imagemagick \
    libmysqlclient-dev

RUN pip3 install mysqlclient django

WORKDIR /data

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]