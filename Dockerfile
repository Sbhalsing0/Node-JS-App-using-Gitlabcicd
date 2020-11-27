FROM alpine:3.10

WORKDIR D:\Angular Projects\my-simple-pipeline
COPY package*.json ./
RUN apk add --update nodejs npm
COPY . .
EXPOSE 8081
CMD [ "node", "app.js" ]