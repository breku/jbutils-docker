#!/usr/bin/env bash

./buildImage.sh
docker stop jbdatabase
docker rm jbdatabase
./runImage.sh
