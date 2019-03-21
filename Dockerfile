FROM node:alpine
WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
RUN rm -f /app/user/config/app.json
CMD node app.js
