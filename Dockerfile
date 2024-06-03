FROM node:22-alpine3.18 AS build

WORKDIR /app

COPY package.json ./

RUN yarn install

ENV PATH /app/node_modules/.bin:$PATH

COPY . .

RUN npm run build

# FROM nginx:1.25.4-alpine3.18

# COPY --from=build /app/dist /var/www/html/
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000
# ENTRYPOINT ["nginx","-g","daemon off;"]

ENTRYPOINT [ "npm", "run", "dev", "--", "--host" ]