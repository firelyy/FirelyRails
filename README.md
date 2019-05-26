# README

## System dependencies
Docker needs to be installed.  Get it [here](https://www.docker.com/products/docker#/mac)

## Initial Setup
Launch docker images for first time
~~~
# 1) Build and run the project with Docker Compose
docker-compose up --build (first time needs --build)
#
# 2) Reset and Migrate the database (run this in a 2nd Docker-enabled terminal)
# OSX / Windows users can skip adding the --user "$(id -u):$(id -g)" flag
docker-compose exec --user "$(id -u):$(id -g)" website rails db:reset
docker-compose exec --user "$(id -u):$(id -g)" website rails db:migrate
#
# 3a) Running Docker natively? Visit http://localhost:3000
# 3b) Running Docker with the Toolbox? Visit http://192.168.99.100:3000
~~~

## Docker Compose Services
- Redis

- Rails & Ruby 2.3.1

- Sidekiq

## Testing

* How to run the test suite

## Redis & Sidekiq

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
# RailsChatApp
