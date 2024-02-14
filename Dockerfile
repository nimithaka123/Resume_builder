FROM node:21.6.1

WORKDIR /app
COPY . .
RUN npm install

EXPOSE 5173
CMD ["npm", "run", "dev"]