docker network create group05network

docker rm group05backend
docker rm group05frontend

docker run -d \
  --name group05backend \
  --network group05network \
  -p 22131:22131 \
  -e HF_TOKEN=() \
  jjpisano05/group05backend:1.4

docker run -d \
  --name group05frontend \
  --network group05network \
  -p 22130:22130 \
  -e HF_TOKEN=() \
  jjpisano05/group05frontend:1.5

docker run -d \
  --network group05network \
  -p 22132:9090 \
  -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml:ro \
  prom/prometheus:latest \
  --config.file=/etc/prometheus/prometheus.yml