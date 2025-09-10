DOCKER_CMD = docker
COMPOSE_FILE = srcs/docker-compose.yml

.PHONY: all build up down clean re

all: build up

build:
	$(DOCKER_CMD) compose -f $(COMPOSE_FILE) build

up:
	$(DOCKER_CMD) compose -f $(COMPOSE_FILE) up -d

down:
	$(DOCKER_CMD) compose -f $(COMPOSE_FILE) down

clean: down
	$(DOCKER_CMD) system prune -af

re: clean all
