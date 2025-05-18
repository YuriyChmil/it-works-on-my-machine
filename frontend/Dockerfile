FROM node:18.17.1

WORKDIR /code
COPY . .
RUN npm install && npm run build
RUN npm install
ENTRYPOINT ["npm", "start"]

