#!/usr/bin/env bash

set -eu

git clone https://github.com/dcevm/dcevm.git
cd dcevm

git apply /vagrant/dcevm-jdk7u85-b02-config.patch

./gradlew patch --debug
./gradlew compileFastdebug --debug
./gradlew compileProduct --debug

rm -rf /vagrant/out/
mkdir -p /vagrant/out/hotspot
cp -Rv hotspot/build /vagrant/out/hotspot/build
cp -Rv build /vagrant/out/build
