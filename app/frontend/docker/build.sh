docker build -f Dockerfile -t group05frontend ..
docker login
docker tag group05frontend:latest jjpisano05/group05frontend:latest
docker push jjpisano05/group05frontend:latest