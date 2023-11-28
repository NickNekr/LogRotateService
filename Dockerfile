FROM debian:bullseye-slim

WORKDIR /app

ARG PATH_TO_LOG=/logs

ENV http_proxy http://10.0.20.6:80
ENV https_proxy http://10.0.20.6:80

RUN apt-get update && \
    apt-get install -y logrotate && \
    apt-get install -y cron

COPY crontab /etc/cron.d/crontab
COPY script.sh script.sh

COPY delete_logs.conf delete_logs.conf
COPY compress_logs.conf compress_logs.conf
RUN sed -i "s|{{PATH_TO_LOG}}|$PATH_TO_LOG|g" /app/delete_logs.conf
RUN sed -i "s|{{PATH_TO_LOG}}|$PATH_TO_LOG|g" /app/compress_logs.conf

RUN chmod +x /app/script.sh



CMD ["/app/script.sh"]
