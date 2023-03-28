FROM node:14 as builder
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . .
RUN npm run build 

FROM nginx
EXPOSE 3000
COPY --from=builder /app /var/www/html