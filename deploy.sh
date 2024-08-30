#!/bin/bash
# You need to giv xec perms: chmod +x deploy.sh

# Remove the specific folders inside ./frontend/
rm -rf ./frontend/node_modules
rm -rf ./frontend/.svelte-kit
rm -rf ./frontend/build

# Start the Docker Compose services
docker compose up -d

# Wait for a few seconds to ensure the container is up
sleep 10

# Copy files from the Docker container to the host
docker cp sveltekit:/frontend/node_modules ./frontend/
docker cp sveltekit:/frontend/.svelte-kit ./frontend/
docker cp sveltekit:/frontend/build ./frontend/

echo "Files have been copied successfully."
