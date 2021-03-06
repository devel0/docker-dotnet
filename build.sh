#!/bin/bash

# Usage: ./build [addictional-docker-build-args]
#
# Example: ./build --network-dkbuild

#DOTNET_PACKAGE=dotnet-sdk-3.0.100-linux-x64.tar.gz

exdir=$(dirname `readlink -f "$0"`)

#DOWNLOADS="$exdir"/Downloads

#if [ ! -e "$DOWNLOADS" ]; then
#	mkdir "$DOWNLOADS"
#fi

#if [ ! -e "$DOWNLOADS/$DOTNET_PACKAGE" ]; then
#	echo "missing $DOWNLOADS/$DOTNET_PACAKGE please download from https://dotnet.microsoft.com/download/dotnet-core/3.0"
#	exit 1
#fi

docker build $args $* -t searchathing/dotnet:focal -f "$exdir"/Dockerfile "$exdir"/.
