#!/bin/sh -x
export WEBKIT_OUTPUTDIR=`pwd`/WebKitBuild-Docker
Tools/Scripts/build-webkit --qt
