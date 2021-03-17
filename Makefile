#base project init
base-init: directories permissions composer

#nette cache remove
cacherm:
	@rm -rf src/temp/cache/
	@echo ---Cache deleted---

#phpstan
phpstan:
	src/vendor/bin/phpstan --level=8 analyse src/app

#just useful
bash:
	 docker exec -it app /bin/bash

#commands
directories:
	@sudo mkdir -p src/log
	@sudo mkdir -p src/temp
	@sudo echo Directories created

permissions:
	@sudo chmod 777 src/log
	@sudo chmod 777 src/temp
	@sudo chmod 777 src
	@echo Permissions updated

	 
composer:
	cd src && composer install