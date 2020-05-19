FROM node:14.2.0-alpine
EXPOSE 3000
WORKDIR /anode

ADD package.json .
ADD package-lock.json .

RUN npm ci
ADD . .

CMD ["node", "index.js"]
