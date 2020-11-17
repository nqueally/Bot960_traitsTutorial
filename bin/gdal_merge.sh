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

# modify this line to run your desired Python script and any other work you need to do
# import gdal as a check on the python environment;
python -c 'from osgeo import gdal; print("Hello, World!"); print("faking out gdal_merge")'

