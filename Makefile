.RECIPEPREFIX +=
.DEFAULT_GOAL := help
model="User"
package-name=""
include .env
help:
	@echo "Useful  commands"
install:
	@docker exec -it $(SHORT_NAME)_php composer install
cupdate:
	@docker exec -it $(SHORT_NAME)_php composer update
packagedev:
	@docker exec -it $(SHORT_NAME)_php composer require $(package-name) --dev
package:
	@docker exec -it $(SHORT_NAME)_php composer require $(package-name)
dump:
	@docker exec -it $(SHORT_NAME)_php composer dump

npm-install:
	@docker exec -it $(SHORT_NAME)_php npm install

node-update:
	@docker exec -it $(SHORT_NAME)_php npm update

npm-build:
	@docker exec -it $(SHORT_NAME)_php npm run build

test:
	@docker exec -it $(SHORT_NAME)_php php artisan test
coverage:
	@docker exec -it $(SHORT_NAME)_php php artisan test --coverage
migrate:
	@docker exec -it $(SHORT_NAME)_php php artisan migrate
showmodel:
	@docker exec -it $(SHORT_NAME)_php php artisan model:show $(model)
newmigrate:
	@docker exec -it $(SHORT_NAME)_php php artisan migrate:fresh
seed:
	@docker exec -it $(SHORT_NAME)_php php artisan db:seed
optimize:
	@docker exec -it $(SHORT_NAME)_php php artisan optimize
analyse:
	@docker exec -it $(SHORT_NAME)_php ./vendor/bin/phpstan analyse
pint:
	@docker exec -it $(SHORT_NAME)_php ./vendor/bin/pint --preset psr12
db-container:
	@docker exec -it $(SHORT_NAME)_db /bin/sh
redis-container:
	@docker exec -it $(SHORT_NAME)_redis /bin/sh
web-container:
	@docker exec -it $(SHORT_NAME)_redis /bin/sh
php-container:
	@docker exec -it $(SHORT_NAME)_php /bin/sh
up:
	@docker-compose up -d
down:
	@docker-compose down
up-build:
	@docker compose up -d --build
