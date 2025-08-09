# use image node:20-alpine
FROM node:20-alpine

# set working directory
WORKDIR /app

# add variables to the environment
ENV NODE_ENV=production
ENV PORT=5173
ENV VITE_BASE_URL=https://data.origamid.dev/vendas

# copy package.json and package-lock.json
COPY package.json .
COPY package-lock.json .

# install dependencies
RUN npm install

# copy the rest of the application
COPY . .

# expose port 5173 for the application access
EXPOSE 5173

# execute command to start the application
CMD ["npm", "run", "start"]
