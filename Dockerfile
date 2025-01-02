FROM node:18.15-alpine

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application
COPY . .

# Build the application
RUN npm run build

# Expose the production port
EXPOSE 4800

# Run the application
CMD ["npm", "run", "start"]



#FROM node:18-alpine3.17 as build

# update and install the latest dependencies for the alpine version
#RUN apk update && apk upgrade

# set work dir as src
#WORKDIR /src
# copy the nuxt project package json and package json lock if available 
#COPY package* ./
# install all the project npm dependencies
#RUN  npm install
# copy all other project files to working directory
#COPY . ./
# build the nuxt project to generate the artifacts in .output directory
#RUN npx nuxt build

# we are using multi stage build process to keep the image size as small as possible
#FROM node:18-alpine3.17
# update and install latest dependencies, add dumb-init package
# add a non root user
#RUN apk update && apk upgrade && apk add dumb-init && adduser -D nuxtuser 
# set non root user
#USER nuxtuser

# set work dir as src
#WORKDIR /src
# copy the output directory to the /src directory from 
# build stage with proper permissions for user nuxt user
#COPY --chown=nuxtuser:nuxtuser --from=build /src/.output ./
# expose 4800 on container
#EXPOSE 4800

# set src host and port . In nuxt 3 this is based on nitro and you can read
#more on this https://nitro.unjs.io/deploy/node#environment-variables
#ENV HOST=0.0.0.0 PORT=4800 NODE_ENV=production
# start the src with dumb init to spawn the Node.js runtime process
# with signal support
#CMD ["dumb-init","node","/src/server/index.mjs"]


















#FROM node:18-alpine

#EXPOSE 4800
#ENV PORT 4800

#COPY . /src
#WORKDIR /src


#COPY package*.json ./

#RUN npm install

#COPY . .



# RUN npm run build
# CMD [ "npm", "run", "start" ]



###################################################

#FROM node:lts as build-stage
#WORKDIR /src
#COPY . .
#RUN npm install
#RUN npm run build
#RUN rm -rf node_modules && \
#    NODE_ENV=production npm install \
#    --prefer-offline \
#    --pure-lockfile \
#    --non-interactive \
#    --production=true \
#    --port=4800

#FROM node:lts as prod-stage

#WORKDIR /src
#COPY --from=build-stage /src/.output/  ./.output/
#CMD [ "node", "/src/.output/server/index.mjs" ]


######################################################


#FROM node:18.0.0
#ENV HOST 0.0.0.0
#COPY . /src
#WORKDIR /src
#RUN npm install


# Use the official Node.js image with your preferred version
##FROM node:18.0.0

# Set environment variables if needed
##ENV HOST 0.0.0.0
##ENV PORT 4800

# Create and set the working directory in the container
##WORKDIR /src

# Copy the application files into the container
##COPY . /src

# Install project dependencies
##RUN npm install

# Build your Nuxt 3 application (if needed)
# RUN npm run build

# Start the Nuxt 3 application
##CMD ["npm", "start"]

