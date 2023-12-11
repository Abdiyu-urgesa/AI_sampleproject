FROM node:16-alpine

WORKDIR /app
#copy  package.json file to the root folder of workdir first
COPY package.json .

RUN npm install
#copy .from this root folder to the workdir root folder
COPY . .

EXPOSE 3000
# required for docker desktop port mapping

CMD ["npm", "start"]