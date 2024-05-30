FROM node:20

ARG DEFAULT_PORT=80

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

#  VOLUME ["/app/node_modules"]

ENV PORT $DEFAULT_PORT

VOLUME [ "/temp" ]

EXPOSE $PORT

CMD ["npm", "start"]