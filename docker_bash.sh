whattodebug=$(docker ps | awk -v f=1 '$f ~ /^[[:alnum:]]{12}$/ { print $f }')
docker exec -ti $whattodebug bash
