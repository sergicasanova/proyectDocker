FROM node:14

RUN mkdir -p C:\Users\usuario\Desktop\DockerPracticaFinal\src

WORKDIR C:\Users\usuario\Desktop\DockerPracticaFinal\src

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]

