FROM node:alpine
WORKDIR /app
COPY package.json /app
# RUN npm cache clean
RUN npm install
# RUN npm install react-scripts
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
