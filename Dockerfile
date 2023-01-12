FROM node:16

WORKDIR /nextbuild

COPY package.json /nextbuild

RUN npm install

COPY . .

RUN npm run build

ENV PORT 80
EXPOSE 80

CMD ["npm","run", "start"]
