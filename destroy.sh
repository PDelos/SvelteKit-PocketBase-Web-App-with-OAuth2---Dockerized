#!/bin/bash

echo "Stopping containers..."
docker stop sveltekit pocketbase

echo "Removing containers..."
docker rm sveltekit pocketbase

echo "Removing images..."
docker rmi datathon_web-front datathon_web-back

echo "Removing volumes..."
docker volume rm datathon_web_front_build datathon_web_front_node_modules datathon_web_front_svelte_kit

echo "All done!"
