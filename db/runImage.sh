#!/usr/bin/env bash

# -v $POSTGRESQL_CONF_PATH/postgresql.conf:/var/lib/postgresql/data/postgresql.conf \
# -v $POSTGRESQL_CONF_PATH/pg_hba.conf:/var/lib/postgresql/data/pg_hba.conf \

POSTGRESQL_CONF_PATH=/home/brekol/workspaces/private/jbutils-docker/db/image/postgres-config


docker run -d \
--name jbdatabase \
-p 5432:5432 \
-v /home/brekol/Downloads/tmp/pgdata:/var/lib/postgresql/data \
jbdatabase