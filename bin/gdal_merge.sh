#!/bin/bash
## 

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
filetype=$2
nodata=$3
filelist=$4


# modify this line to run your desired Python script and any other work you need to do
# import gdal as a check on the python environment;
python3 gdal_merge.py  -separate -o $outputdir -of $filetype -a_nodata $nodata $filelist
