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
img=$1
obs=$2
outputdir=$3
pref=$4
kernel=$5
mask_t=$6
basedir=$7


#cp $basedir/$img* .
#cp $basedir/$obs* . 

echo $img
echo $obs
echo $outputdir
echo $pref
echo $kernel
echo $basedir
echo $basedir/$img*
echo $basedir/$obs*

# modify this line to run your desired Python script and any other work you need to do
# import gdal as a check on the python environment;
#python -c 'from osgeo import gdal; print("Hello, World!"); print("faking topo_brdf")'
#python3 topo_brdf_coeffs.py  --img $basedir/$img --obs $basedir/$obs --od $outputdir --pref $pref --kernels $kernel --mask --mask_threshold $mask_t --topo --brdf 

