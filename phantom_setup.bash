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

cd ~
echo "alias phantomjs='phantomjs --ssl-protocol=any '" >> ~/.bashrc
source ~/.bashrc

cd /usr/bin
git clone git://github.com/n1k0/casperjs.git
cd casperjs
ln -sf `pwd`/bin/casperjs /usr/local/bin/casperjs
