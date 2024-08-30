@echo off

:: Remove specific folders inside ./fronted/
rd /s /q .\frontend\node_modules
rd /s /q .\frontend\.svelte-kit
rd /s /q .\frontend\build

:: Start the Docker Compose services
docker compose up -d

:: Wait for a few seconds to ensure the container is up
timeout /t 5 /nobreak >nul

:: Copy files from the Docker container to the host
docker cp sveltekit:/frontend/node_modules ./frontend/
docker cp sveltekit:/frontend/.svelte-kit ./frontend/
docker cp sveltekit:/frontend/build ./frontend/

echo Files have been copied successfully.
