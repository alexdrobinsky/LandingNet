#!/bin/bash

yum -y install git svn hg;
yum -y install gcc gcc-c++ make;

cd third-party
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=$PATH:/LandingNet/third-party/depot_tools/
fetch breakpad
cd src
./configure && make && make install
cd ../
cd minidump-stackwalk
make
cp stackwalker ../../bin/
cd ../../


