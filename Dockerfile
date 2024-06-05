FROM node:14

WORKDIR /app

COPY package.json ./

#Criar usuário e aplicar permissão na pasta do projeto
run adduser -D rm550801 && chown -R rm550801 /app

RUN npm install

COPY . .

EXPOSE 8090

CMD [ "node", "app.js" ]
