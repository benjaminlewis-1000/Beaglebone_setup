#! /bin/bash

pushd /usr/share

apt-get install unzip

mv fonts fonts.bak
mkdir fonts

apt-get install --reinstall ttf-mscorefonts-installer

rm /usr/share/fonts/truetype/msttcorefonts/andalemo.ttf
rm /usr/share/fonts/truetype/msttcorefonts/Andale_Mono.ttf

fc-cache -rv

popd

cp phantomjs /usr/bin 
