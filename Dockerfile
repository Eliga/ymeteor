FROM ubuntu:18.04

# INSTALL PACKAGES
RUN  apt-get update && apt-get install -y curl git python make node-gyp

# INSTALL METEOR
RUN curl https://install.meteor.com | sh
RUN meteor update --allow-superuser

CMD [ "meteor", "--version", "--allow-superuser" ]
