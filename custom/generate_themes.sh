#!/bin/bash
DIR=/home/ubuntu/build_tools/out/linux_64/onlyoffice/documentserver
$DIR/server/tools/allthemesgen --converter-dir=$DIR/server/FileConverter/bin --src=$DIR/sdkjs/slide/themes --output=$DIR/sdkjs/common/Images
