#!/usr/bin/env bash

set -eu

git clone https://github.com/dcevm/dcevm.git dcevm-light
cd dcevm-light

git apply /vagrant/dcevm-jdk7u85-b02-config-light.patch

./gradlew patch --debug
#./gradlew compileFastdebug --debug
./gradlew compileProduct --debug

rm -rf /vagrant/out/light
mkdir -p /vagrant/out/light/hotspot
cp -R hotspot/build /vagrant/out/light/hotspot/build
cp -R build /vagrant/out/light/build
