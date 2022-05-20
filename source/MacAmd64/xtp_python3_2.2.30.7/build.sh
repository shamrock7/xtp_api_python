#!/bin/bash

set -e
BUILDDIR=cmake-build-debug
rm -rf $BUILDDIR
if [ ! -f $BUILDDIR ]; then
    mkdir -p $BUILDDIR
fi
pushd $BUILDDIR
cmake ..
make VERBOSE=1 -j 1
if [[ "$(uname)" == "Darwin" ]];then
  cp "$(pwd)/lib/vnxtpquote.dylib" ../
  cp "$(pwd)/lib/vnxtptrader.dylib" ../
else
  cp "$(pwd)/lib/vnxtpquote.so" ../
  cp "$(pwd)/lib/vnxtptrader.so" ../
fi
popd
