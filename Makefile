# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::   #
#    Makefile                                           :+:      :+:    :+:   #
#                                                     +:+ +:+         +:+     #
#    By: hannes <hannes@student.42.fr>              +#+  +:+       +#+        #
#                                                 +#+#+#+#+#+   +#+           #
#    Created: 2025/08/26 00:00:00 by hannes            #+#    #+#             #
#    Updated: 2025/08/26 00:00:00 by hannes           ###   ########.fr       #
#                                                                              #
# **************************************************************************** #

COMPOSE_FILE = srcs/docker-compose.yml
COMPOSE_CMD = docker-compose

.PHONY: all build up down clean re

all: build up

build:
	$(COMPOSE_CMD) -f $(COMPOSE_FILE) build

up:
	$(COMPOSE_CMD) -f $(COMPOSE_FILE) up -d

down:
	$(COMPOSE_CMD) -f $(COMPOSE_FILE) down

clean: down
	docker system prune -af

re: clean all
