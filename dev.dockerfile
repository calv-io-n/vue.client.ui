FROM node:lts-alpine

RUN apk add --no-cache git

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN npm install --save-exact

CMD ["npm", "run", "serve" ]
