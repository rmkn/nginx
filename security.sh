#!/bin/sh

cat <<EOT > /etc/nginx/conf.d/security.conf 
server_tokens off;
add_header X-Content-Type-Options nosniff;
#add_header X-XSS-Protection "1; mode=block";
#add_header X-Frame-Options DENY;
#add_header Content-Security-Policy "default-src 'self'";
EOT
