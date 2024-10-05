docker build -t client:01 .
docker run -e "URL=https://elasticsearch01.auladevops:9200" -e "PASS=PblVwv+IQiVBQTrSE2+t" --name log --net auladevops client:01
