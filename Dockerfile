FROM alpine:latest
RUN apk add --no-cache nodejs npm 
WORKDIR /app
COPY . /app

RUN npm install 

EXPOSE 3001

CMD [ "node", "index.js" ]
