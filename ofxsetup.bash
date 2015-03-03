#! /bin/bash

cd ~
git clone https://github.com/speedyswimmer1000/ofxclient.git
cd ofxclient
python setup.py build
python setup.py test
python setup.py install
