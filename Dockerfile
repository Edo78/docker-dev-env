FROM node:16.13.2

WORKDIR /app
ENV PORT 3000

EXPOSE 3000

COPY package*.json /app/
RUN npm install
CMD ["npm", "run", "dev"]