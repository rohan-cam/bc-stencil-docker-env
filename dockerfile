# dockerfile.v2 - electric boogaloo

# use official node parent image
FROM node:14

# set container working directory
WORKDIR /theme

# install the cli
RUN npm -g config set user root
RUN npm install -g @bigcommerce/stencil-cli

# install theme dependencies
RUN npm i

# default command
ENTRYPOINT ["stencil"]
CMD ["--help"]

# publish cli default port
EXPOSE 3000