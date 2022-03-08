FROM node:12.18.3


RUN git clone https://github.com/DanielPickens/React-Message-App

# Change directories into what got checked out.
WORKDIR /React-Message-App
# All of the files are already there, so we only need to
RUN npm install

EXPOSE 8080
CMD ["pm2", "start", "./bin/ww"]
