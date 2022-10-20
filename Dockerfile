FROM node:16

WORKDIR /nextbuild

COPY . /nextbuild

RUN npm install

RUN npm run build

ENV PORT 80
EXPOSE 8080

CMD ["npm","run", "start"]
