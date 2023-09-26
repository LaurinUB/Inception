DB_FOLDER=~/data/db
WP_FOLDER=~/data/wp

all: $(DB_FOLDER) $(WP_FOLDER)
	docker compose -f ./srcs/docker-compose.yml up -d

$(DB_FOLDER):
	mkdir -p ~/data/db

$(WP_FOLDER):
	mkdir -p ~/data/wp

clean:
	docker compose -f ./srcs/docker-compose.yml down

fclean: clean
	sudo rm -rf ~/data

re: clean
	docker compose -f ./srcs/docker-compose.yml up --build -d

prune:
	docker system prune -f --all
