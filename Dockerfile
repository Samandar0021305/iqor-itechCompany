FROM 18-alpine3.15

WORKDIR /app

COPY package*.json ./

RUN yarn install


COPY . .

RUN yarn build

EXPOSE 3003

ENTRYPOINT ["yarn"]

CMD ["serve"]
