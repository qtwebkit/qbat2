#!/bin/sh -x
export WEBKIT_OUTPUTDIR=`pwd`/WebKitBuild-Docker

Tools/Scripts/update-qtwebkit-libs
find $WEBKIT_OUTPUTDIR/DependenciesQT/Source/ -name '*.debug' -exec cp {} $WEBKIT_OUTPUTDIR/DependenciesQT/Root/lib ';'
rm -rf $WEBKIT_OUTPUTDIR/DependenciesQT/Source $WEBKIT_OUTPUTDIR/DependenciesQT/Build
