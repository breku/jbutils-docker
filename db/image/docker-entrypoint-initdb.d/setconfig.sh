#!/usr/bin/env bash

cat /postgres-config/postgresql.conf > /var/lib/postgresql/data/postgresql.conf
cat /postgres-config/pg_hba.conf > /var/lib/postgresql/data/pg_hba.conf
