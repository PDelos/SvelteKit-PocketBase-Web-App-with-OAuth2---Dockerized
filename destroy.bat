@echo off
echo Stopping containers...
docker stop sveltekit pocketbase

echo Removing containers...
docker rm sveltekit pocketbase

echo Removing images...
docker rmi sveltekit-pocketbase-web-app-with-oauth2---dockerized-backend:latest
docker rmi sveltekit-pocketbase-web-app-with-oauth2---dockerized-frontend:latest

echo Removing volumes...
docker volume rm sveltekit-pocketbase-web-app-with-oauth2---dockerized_front_svelte_kit 
docker volume rm sveltekit-pocketbase-web-app-with-oauth2---dockerized_front_node_modules
docker volume rm sveltekit-pocketbase-web-app-with-oauth2---dockerized_front_build

echo All done!
