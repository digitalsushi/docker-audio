#!/bin/bash

mkdir -p /app/demos
pip3 install cython 'numpy==1.19.0'
cd /app/pyCrossfade
pip3 install -r requirements.txt
# at the time of running this, pyCrossfade requires numpy 1.19.0,
# but then I need to upgrade it to 1.20.0 so that I do not get a
# 80-vs-88 C header error. This isn't my expertise, I'm just here to 
# glue these together:
pip3 install --upgrade numpy
