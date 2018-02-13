#!/bin/bash

cur_dir=$(pwd)

cd hazelcast && ./gradlew installDist && ln -fs $(pwd)/build/install/hazelcast/bin/hazelcast /usr/bin/hazelcast
cd $cur_dir

cd hazelcast-cli && ./gradlew installDist && ln -fs $(pwd)/build/install/hazelcast-cli/bin/hazelcast-cli /usr/bin/hazelcast-cli
cd $cur_dir

ln -fs $(pwd)/hazelcast/src/main/resources/hazelcast.xml hazelcast.xml
ln -fs $(pwd)/hazelcast-cli/src/main/resources/hazelcast-client.xml hazelcast-client.xml
