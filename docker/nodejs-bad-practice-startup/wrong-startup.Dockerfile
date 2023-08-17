FROM node:18

COPY . /app/

WORKDIR /app

CMD ["bash", "-l", "-c", "npm install && npm start"]
