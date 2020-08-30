#!/bin/bash

PKG_NAME="onedown"
VERSION=$(cat VERSION)

echo Version: $VERSION
rm -rf debs
mkdir debs
cd debs
ln -s ../../$PKG_NAME-$VERSION.tar.xz onedown_$VERSION.orig.tar.xz
tar xf onedown_$VERSION.orig.tar.xz
cd $PKG_NAME-$VERSION
cp -r ../../debian/ .
debuild -us -uc
