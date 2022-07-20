#!/bin/sh

fpm --input-type dir --output-type deb --depends curl --architecture all -C service/ -n puncher