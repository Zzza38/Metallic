FROM node:18

WORKDIR /app

COPY . /app/

COPY package*.json /app/

RUN npm install

RUN npm install pnpm

RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]
