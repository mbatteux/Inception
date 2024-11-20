NAME=inception

${NAME}:

	@mkdir -p /home/mbatteux/data/wordpress /home/mbatteux/data/mysql
	sudo docker-compose -f srcs/docker-compose.yml up -d --build
#     sleep 15
#     make logs

all: ${NAME}

down:
	sudo docker-compose -f srcs/docker-compose.yml down

fclean:
	sudo docker-compose -f srcs/docker-compose.yml down -v
	sudo docker system prune --force --volumes --all
	sudo rm -rf ~/data

re: fclean all

logs:
	@echo "---------- MARIADB -----------\n"
	@sudo docker-compose -f srcs/docker-compose.yml logs mariadb
	@echo "\n-------- WORDPRESS ----------\n"
	@sudo docker-compose -f srcs/docker-compose.yml logs wordpress
	@echo "\n---------- NGINX ------------\n"
	@sudo docker-compose -f srcs/docker-compose.yml logs nginx