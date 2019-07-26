# e.g make up name_suffix=myNameSuffix
name_suffix=test
container_name=busybox_${name_suffix}
network_name=jenkins-busybox-docker-network

up: 
	CONTAINER_NAME=${container_name} \
	NETWORK_NAME=${network_name} \
	docker-compose up -d 

down: 
	CONTAINER_NAME=${container_name} \
	NETWORK_NAME=${network_name} \
	docker-compose down

restart: 
	$(MAKE) down && \
	$(MAKE) up 

bash:
	docker exec -it ${container_name} bash

# Creates a local network called ${network_name}.
# You can check your local networks using `docker network ls`
network_up:
	docker network create --driver=bridge ${network_name}

network_down:
	docker network rm ${network_name}
