#!/bin/sh

rm -rf ../build
meteor build ../build/
tar -xzf ../build/kickstart-sass-test.tar.gz -C ../build/
cd ../build/bundle/programs/server
npm install
cd ../../..
export MONGO_URL=mongodb://localhost:27017/kickstart-sass-test
export BIND_IP=127.0.0.1
export PORT=3030
export ROOT_URL=http://127.0.0.1:3030
node bundle/main.js