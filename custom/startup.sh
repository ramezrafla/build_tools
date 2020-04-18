#!/bin/bash
 
HOME=/home/ubuntu
 
cd $HOME/build_tools/out/linux_64/onlyoffice/documentserver/server/FileConverter
LD_LIBRARY_PATH=$PWD/bin NODE_ENV=development-linux NODE_CONFIG_DIR=$PWD/../Common/config ./converter &> $HOME/fc-log.txt &
 
cd $HOME/build_tools/out/linux_64/onlyoffice/documentserver/server/SpellChecker
NODE_ENV=development-linux NODE_CONFIG_DIR=$PWD/../Common/config ./spellchecker &> $HOME/sc-log.txt &
 
cd $HOME/build_tools/out/linux_64/onlyoffice/documentserver/server/DocService
NODE_ENV=development-linux NODE_CONFIG_DIR=$PWD/../Common/config ./docservice &> $HOME/ds-log.txt &
