#!/bin/bash
# Program:
#	The script is used to stop apache container
# History:
# 2020/09/26	nxshen	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

container_id=`docker ps | grep apache-docker_apache | cut -c1-12`

echo "stopping container: apache"
echo "container_id = ${container_id}"

docker stop $container_id

exit 0
