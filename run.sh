#!/bin/bash
set -e

if [[ "$REDIRECT_REGEX" -eq "" ]]; then
	REDIRECT_REGEX="^/(.*)"
fi

if [[ "$REDIRECT_PERMANENT" -eq "1" ]]; then
	REDIRECT_PERMANENT="permanent"
fi

cp /etc/nginx/nginx.conf.old /etc/nginx/nginx.conf
echo "rewrite $REDIRECT_REGEX $REDIRECT_DESTINATION $REDIRECT_PERMANENT;" >> /etc/nginx/nginx.conf
echo "}}" >> /etc/nginx/nginx.conf
nginx -g "daemon off;"
