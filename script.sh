#!/bin/bash

if [ "$ROTATE_MODE" = "DELETE" ]; then
  mv /app/delete_logs.conf /etc/logrotate.d/logrotate.conf
elif [ "$ROTATE_MODE" = "COMPRESS" ]; then
  mv /app/compress_logs.conf /etc/logrotate.d/logrotate.conf
else
  echo "Unknown value for ENV_VARIABLE"
fi

chmod 0644 /etc/cron.d/crontab

cron -f

