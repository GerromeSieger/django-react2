FROM node:16.13.1-alpine as build

WORKDIR /app4

COPY package.json .

#COPY package-lock.json .

#RUN npm install -g npm@8.14.0

RUN npm install

COPY . /app4

RUN npm run build
#CMD ["npm","start"]



FROM nginx:1.19.0-alpine

COPY --from=build /app4/build /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf:ro

CMD ["nginx","-g","daemon off;"]
