docker stop elasticSearch-node0 && docker rm elasticSearch-node0
docker stop elasticSearch-node1 && docker rm elasticSearch-node1

docker run -d --name elasticSearch-node0 \
-p 9200:9200 -p 9300:9300 \
-v ${PWD}/es0/es0.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
-e ES_JAVA_OPTS="-Xms256m -Xmx256m" \
elasticsearch:7.8.1

docker run -d --name elasticSearch-node1 \
-p 9201:9201 -p 9301:9301 \
-v ${PWD}/es1/es1.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
-e ES_JAVA_OPTS="-Xms256m -Xmx256m" \
elasticsearch:7.8.1

