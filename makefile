all: minecraft-up nlaundry_site-up traefik-up jenkins-up

minecraft-up:
	docker compose --env-file .env --file ~/containers/configs/minecraft/minecraft-compose.yml up -d


traefik-up:
	docker compose --env-file .env --file ~/containers/configs/traefik/traefik-compose.yml up -d

traefik-restart:
	docker compose --env-file .env --file ~/containers/configs/traefik/traefik-compose.yml restart

nlaundry_site-up:
	docker compose --env-file .env --file ~/containers/configs/nlaundry_site/nlaundry_site-compose.yml up -d


jenkins-up:
	docker compose --env-file .env --file ~/containers/configs/jenkins/jenkins-compose.yml up -d
