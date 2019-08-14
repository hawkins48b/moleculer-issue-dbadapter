# Develop stage
FROM node:10.3-alpine
ENV NODE_ENV=development
WORKDIR /app
# npm packages
COPY package.json package-lock.json ./
RUN npm install
# necessary for bcrypt
# RUN npm rebuild bcrypt --build-from-source
# Copy project
COPY . .