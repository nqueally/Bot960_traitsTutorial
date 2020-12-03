#!/bin/bash

## Fake out image_to_traits_modify_hybeta4.py
set -e

ENVNAME=tutorial
ENVDIR=$ENVNAME

# these lines handle setting up the environment; you shouldn't have to modify them
export PATH
mkdir $ENVDIR
tar -xzf $ENVNAME.tar.gz -C $ENVDIR
. $ENVDIR/bin/activate

##  get command line params
imgdir=$1
obsdir=$2
outputdir=$3
topo_coeff=$4
brdf_coeff=$5
mask_t=$6
outname=$7
trait_coeff=$8

# modify this line to run your desired Python script and any other work you need to do
# import gdal as a check on the python environment;
python3 image_to_traits_modify_hybeta4.py  --img $imgdir --obs $obsdir --od $outputdir --topo $topo_coeff --brdf $brdf_coeff --mask --mask_threshold $mask_t --out $outname --rgbim --coeffs $trait_coeff

