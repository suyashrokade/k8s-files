FROM node:18

WORKDIR /app

COPY backend/package*.json ./backend/

WORKDIR /app/backend

RUN npm install

WORKDIR /app

COPY . .

WORKDIR /app/backend

EXPOSE 5000

CMD ["node", "app.js"]