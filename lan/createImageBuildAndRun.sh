#!/usr/bin/env bash

./buildImage.sh
docker stop jbutils
docker rm jbutils
./runImage.sh
