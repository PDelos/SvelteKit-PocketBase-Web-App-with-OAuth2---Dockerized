# build with image of alpine containing bun
FROM node:alpine

WORKDIR /frontend

# install dependencies with bun
COPY package*.json ./
RUN npm install

# COPY the rest of the files
COPY . .

# Build the SvelteKit application
#RUN npm run build

# Expose the port that sveltekit uses
EXPOSE 5173

#CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
