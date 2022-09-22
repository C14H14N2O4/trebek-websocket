FROM node:latest
WORKDIR /Trebek_server
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm ci --only=production
EXPOSE 8000
CMD ["npm", "start"]