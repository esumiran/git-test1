FROM node:12

WORKDIR /demoapp

COPY package.json /demoapp/package.json

RUN npm install

COPY . /demoapp/

ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start" ]