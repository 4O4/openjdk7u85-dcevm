#!/usr/bin/env bash

set -eu

git clone https://github.com/dcevm/dcevm.git dcevm-full
cd dcevm-full

git apply /vagrant/dcevm-jdk7u85-b02-config-full.patch

./gradlew patch --debug
#./gradlew compileFastdebug --debug
./gradlew compileProduct --debug

rm -rf /vagrant/out/full
mkdir -p /vagrant/out/full/hotspot
cp -R hotspot/build /vagrant/out/full/hotspot/build
cp -R build /vagrant/out/full/build
