FROM node:21.1.0
# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@3.4.1
RUN npm build run

# add app
COPY . ./

# start app
CMD ["npm", "start"]

EXPOSE 3000