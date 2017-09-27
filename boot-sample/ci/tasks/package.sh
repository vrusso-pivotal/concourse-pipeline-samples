#!/bin/bash

set -xe

cd git-assets/boot-sample
mvn install:install-file -Dfile= -DgroupId=com.oracle -DartifactId=ojdbc7 -Dversion=12.1.0 -Dpackaging=jar
mvn package
cp target/taq-bid-*.jar ../../app-output/taq-bid.jar
