docker build -f Dockerfile -t group05backend ..
docker login
docker tag group05backend:latest jjpisano05/group05backend:latest
docker push jjpisano05/group05backend:latest