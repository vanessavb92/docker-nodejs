FROM node:slim
WORKDIR /app
COPY . /app
Run npm install
EXPOSE 3000
CMD node index.js


