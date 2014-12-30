#! /bin/bash

pushd /usr/share

apt-get install unzip

mv fonts fonts.bak
mkdir fonts

apt-get install --reinstall ttf-mscorefonts-installer

sudo rm /usr/share/fonts/truetype/msttcorefonts/andalemo.ttf
sudo rm /usr/share/fonts/truetype/msttcorefonts/Andale_Mono.ttf

sudo fc-cache -rv

popd

cp phantomjs /usr/bin 
