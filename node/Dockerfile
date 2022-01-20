FROM node:12.18.3-alpine AS node-build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM node:12.18.3-alpine 
WORKDIR /usr/src/app
COPY --from=node-build /usr/src/app/build ./build
COPY package*.json ./
RUN npm ci --only=production

EXPOSE 8000
CMD ["npm", "start"]
