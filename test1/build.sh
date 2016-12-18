#!/bin/bash

set -e

ls /data/
export PGPASSWORD=${KAHAWAI_DBPASS}
psql --set ON_ERROR_STOP=1 -h ${KAHAWAI_DBHOST} -U ${KAHAWAI_DBUSER} ${KAHAWAI_DBNAME} -f test1.sql
