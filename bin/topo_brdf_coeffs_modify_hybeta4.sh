#!/bin/bash

# Fake executable for topo_brdf_coeffs_modify_hybeta4

set -e

ENVNAME=tutorial
ENVDIR=$ENVNAME

# these lines handle setting up the environment; you shouldn't have to modify them
export PATH
mkdir $ENVDIR
tar -xzf $ENVNAME.tar.gz -C $ENVDIR
. $ENVDIR/bin/activate

##  get command line params
outputdir=$1

# modify this line to run your desired Python script and any other work you need to do
# import gdal as a check on the python environment;
#python -c 'from osgeo import gdal; print("Hello, World!"); print("faking topo_brdf")'
python3 topo_brdf_coeffs_modify_hybeta3.py  --od $outputdir ...

