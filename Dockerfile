FROM node:18

ENV NODE_ENV development

WORKDIR /app

COPY package*.json .

RUN npm install

# RUN npm run build

RUN npx prisma generate

ENV DATABASE_URL = "mongodb://mongo1:27017/minecraftnbtviewer"

EXPOSE 5173
EXPOSE 24678
