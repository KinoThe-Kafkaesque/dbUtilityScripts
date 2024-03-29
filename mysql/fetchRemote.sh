#!/bin/bash
source .env

# Dump the remote database to a file
mysqldump -h $MYSQL_REMOTE_HOST -P $MYSQL_REMOTE_PORT -u $MYSQL_REMOTE_USERNAME -p$MYSQL_REMOTE_PASSWORD $MYSQL_REMOTE_DATABASE "$@" --single-transaction --set-gtid-purged=OFF | pv > database_backup.sql
