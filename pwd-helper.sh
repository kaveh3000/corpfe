#!/bin/sh
git clone https://github.com/leopard8k/corpfe.git fe5
cd fe5
docker-compose up -d
docker run --rm --name next -v`pwd`:/app node:14 npm --prefix /app install
docker run --rm --name next -v`pwd`:/app node:14 npm --prefix /app install tailwindcss
ippre=`ifconfig -a |awk '/inet/ && /Bcast:0/ && !/192/ {sub("addr:","",$0);gsub("[.]","-",$2);print "ip"$2}'`
docker run -d -p8001:3000 --rm --name next -v`pwd`:/app \
	-e NEXT_PUBLIC_STRAPI_API_URL="http://${ippre}-${SESSION_ID}-1337.direct.${PWD_HOST_FQDN}" \
	node:14 npm --prefix /app run develop
docker logs -f next &
