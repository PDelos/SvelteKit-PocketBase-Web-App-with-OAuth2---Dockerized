Certainly! Here's the modified README content in markdown code format:

# SvelteKit-PocketBase-Web-App-with-OAuth2---Dockerized

## Overview
This repository contains a Dockerized SvelteKit and PocketBase web application with a simple OAuth2 authentication system. The project leverages Docker Compose to easily set up and manage the entire development environment.

## Technologies Used
- **Frontend**: SvelteKit
- **Backend**: PocketBase
- **Containerization**: Docker

## Getting Started
**Prerequisites**: Docker, Docker Compose

1. Clone the repository:
   ```bash
   git clone https://github.com/PDelos/Datathon_Web.git
   cd Datathon_Web
   ```

2. Build and start the Docker containers:
   ```bash
   docker-compose up --build
   ```

## Running the Application
- **Frontend**: [http://localhost:5173](http://localhost:5173)
- **Backend**: [http://localhost:8090](http://localhost:8090)
  - **API**: [http://localhost:8090/api/](http://localhost:8090/api/)
  - **Admin Panel**: [http://localhost:8090/_/](http://localhost:8090/_/)

## Using PocketBase
Data is stored in `pb_data`. Access PocketBase admin UI at [http://localhost:8090/_/](http://localhost:8090/_/).

### OAuth2 Setup
To properly configure OAuth2 providers, ensure the following:

1. **Set the Redirect URI**: In your OAuth2 provider's settings, set the redirect URI to:
   ```
   http://localhost:5173/login
   ```

2. **Add Client ID and Client Secret**: In the PocketBase admin dashboard:
   - Navigate to the **OAuth2 providers** section.
   - Add your **Client ID** and **Client Secret** provided by your OAuth2 provider.

## Commands to Dockerize Development Environment
- Run the `.bat` / `.sh` scripts to deploy or destroy all the containers.
- If having problems with Docker, make sure all volumes, images, and containers related to this repo are deleted before running Docker commands.
- To enter inside a container through a terminal, use:
   ```bash
   docker exec -it sveltekit /bin/sh
   docker exec -it pocketbase /bin/sh
   ```

## Additional Resources
- [SvelteKit Documentation](https://kit.svelte.dev/docs)
- [PocketBase Documentation](https://pocketbase.io/docs)
```

This version provides clear instructions on how to configure the OAuth2 system within the PocketBase admin dashboard.
