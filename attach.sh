#!/bin/bash
# Program:
#	用來進入 ubuntu-os docker container 的腳本
# History:
# 2020/09/26	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

container_id=`docker ps | grep apache | cut -c1-12`

echo "entering bash of container: apache"
echo "container_id = ${container_id}"

docker exec -it $container_id bash

exit 0
