Dockerized Nette 3.1 Clean Project
==================================

This is quick dockerized template for your Nette-based application. It contains:
- php 8 @ apache
- mariadb 10.3
- composer
- make
- Nette 3.1 web project
- phpstan

Requirements
------------
- installed Docker


Installation
------------

Obtain this project, then in terminal of your choice:
- `docker-compose up -d`

(make sure your localhost + ports are available, no running wamp or so...)

If your terminal supports `make`:
- `make bash`

if not, then:
- `docker exec -it app /bin/bash`

this will take you into running docker container, where you just:
- `make base-init`

which will create directories, set permissions and downloads vendor libraries using internal composer

How to use
----------
Just head into `localhost/src`

Using composer within docker
----------------------------
- head into bash (using `make bash` or `docker exec -it app /bin/bash`) from root directory in your terminal
  - go to `src` directory and run  `composer require my_desired_library`
  - OR 
  - just `cd src && composer require my_desired_library`

Useful make commands:
---------------------
- `make cacherm` - removes nette cache
- `make phpstan` - runs phpstan (lvl 8) on your `src/app` directory

Based on
--------
[thecodingmachine](https://github.com/thecodingmachine/docker-images-php) docker images, thank you!