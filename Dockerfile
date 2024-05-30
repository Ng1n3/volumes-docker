FROM node:20

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

#  VOLUME ["/app/node_modules"]

VOLUME [ "/temp" ]

EXPOSE 80

CMD ["npm", "start"]