FROM node:16-alpine

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

RUN npm run build

ENV PORT 80
EXPOSE 80

CMD ["npm","run", "start"]
