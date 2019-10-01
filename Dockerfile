FROM node:12-alpine
WORKDIR /app
COPY package.json /app
RUN yarn
COPY . /app
# app runs on port 3000 but we expose 3002
# we will foward requests to port 3002 to 3000
# e.g. docker run -it -p 3002:3000 node-docker
CMD yarn start
EXPOSE 3002
