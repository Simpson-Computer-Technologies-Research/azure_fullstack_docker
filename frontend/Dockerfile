# Dockerfile for latest nodejs alpine image
FROM node:alpine

## ARGS
ARG NODE_ENV

## Set the environment variables
ENV NODE_ENV=${NODE_ENV}

## Set the working directory
WORKDIR /app

## Copy package.json to the working directory and install dependencies
COPY package.json .
RUN npm install

## Copy the rest of the files to the working directory
COPY . .

## Expose the port
EXPOSE 5173

## Start the application
CMD ["npm", "run", "dev"]