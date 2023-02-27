FROM node:18

ENV NODE_ENV development

WORKDIR /app

COPY package*.json .

RUN npm install

COPY prisma .

COPY .env .

RUN npx prisma generate

EXPOSE 5173

EXPOSE 24678
