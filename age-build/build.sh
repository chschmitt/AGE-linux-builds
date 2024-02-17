#!/bin/sh

docker-compose exec "build-$1" cmake /home/build/AGE -DEXTERN_DIR=/home/build
docker-compose exec "build-$1" make
cd "../$1"
mkdir -p release/AGE

cp -v extern/genieutils/libgenieutils.so release/AGE
cp -v AdvancedGenieEditor3 release/AGE

cd release

tar -czf "AGE-$1.tar.gz" AGE

cd ../..
chown -R 1000:1000 .