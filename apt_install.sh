sudo apt install -y curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
whattorun=$(sudo docker images -q | head -n 1)
sudo docker run -i -d -p 19126:19126 $whattorun
whattodebug=$(docker ps | awk -v f=1 '$f ~ /^[[:alnum:]]{12}$/ { print $f }')
docker exec -ti $whattodebug bash
