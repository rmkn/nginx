#!/bin/sh

cat <<EOT > /etc/nginx/conf.d/security.conf 
server_tokens off;
EOT
