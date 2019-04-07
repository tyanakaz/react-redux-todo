#!/bin/sh

touch .env

docker-compose build
docker-compose run frontend create-react-app .
docker-compose run frontend yarn add react-router redux react-redux
docker-compose up -d
