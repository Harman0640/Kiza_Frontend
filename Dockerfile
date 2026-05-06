FROM node:21-alpine

WORKDIR /app

COPY . . 

RUN npm run build 

CMD ["npm" , "start"]