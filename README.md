# docker_container
install docker based on the os ..........https://docs.docker.com/engine/install/
 
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world

CHECK FOR FIREWALL RULES ON PORTS
sudo ufw allow <hostPort>/tcp
sudo ufw status 

COMMANDS NEEDED TO BUILD, TAG AND PUSH DOCKER IMAGE TO DOCKER REGISTRY
docker login -u <username>
sudo docker build -t username/imagesName:tag .
sudo docker tag username/imagesName:tag username/imagesName:tag 
sudo docker push username/imagesName:tag 

  COMMANDS NEEDED TO EXPOSE DOCKER TO THE INTERNET
  docker run -d -p <hostport>:<containerport> username/imagesName:tag
  example:   docker run -d -p  8080:90 --name=nice-apache obianuju/nickosapp:v1.0.0 or :latest