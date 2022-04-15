#!/bin/sh
if [ ! -z $1 ]
then 
	sed -i 's/Dimension/'$1'/g' /usr/share/nginx/html/index.html
fi
nginx -g "daemon off;"
