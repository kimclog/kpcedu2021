#!/bin/sh
TOKEN_ANONY=$(curl "https://auth.docker.io/token?service=registry.docker.io&scope=repository:ratelimitpreview/test:pull" | jq -r .token)
TOKEN_USER=$(curl --user 'kimclog:rlatjdghks1!' "https://auth.docker.io/token?service=registry.docker.io&scope=repository:ratelimitpreview/test:pull" | jq -r .token)
echo ANONYMOUS LIMIT
curl -s -I -H "Authorization: Bearer $TOKEN_ANONY" https://registry-1.docker.io/v2/ratelimitpreview/test/manifests/latest | grep -i ratelimit
echo USER LIMIT
curl -s -I -H "Authorization: Bearer $TOKEN_USER" https://registry-1.docker.io/v2/ratelimitpreview/test/manifests/latest | grep -i ratelimit

