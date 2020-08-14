FROM node:14
ENV mainToken
ENV guildTokens
WORKDIR /usr/src/nitro-sniper
COPY package*.json ./
USER node
RUN npm install --only=prod
COPY --chown=node:node . .

CMD [ "node", "." ] 
