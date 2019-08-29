#!/bin/bash

echo "===== Download Cloud Seeder App ====="
URL=$(curl -s https://api.github.com/repos/Arshad-Barves/cloudseeder/releases/latest | grep browser_download_url | cut -d '"' -f 4)
wget $URL -O tcloud.tgz

echo "===== Unarchive App ====="
mkdir cloudseeder
tar zxf tcloud.tgz -C cloudseeder --strip-components 1

echo "===== Install dependencies ====="
cd cloudseeder
npm install --only=prod
