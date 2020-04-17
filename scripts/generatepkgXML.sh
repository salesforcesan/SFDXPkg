#!/bin/bash

export orgalias=$1
export packageName=$2

if [ $# -lt 1 ]
then
    orgalias = saravanan.durairaj@crossmark.com.oh.devsan
    echo Usage: generatepkgXML.sh orgalias packageName 1
    # exit
fi

if [ $# -lt 2 ]
then
    packageName = OneHubDev 
    echo Usage: generatepkgXML.sh orgalias packageName 2
    # exit
fi

rm -rf ./mdapipkg/ # If mdapipkg directory exists delete it

mkdir ./mdapipkg/ # Create a New Manifest Directory

## Retrieve the PackageXML from Unmanaged Container

sfdx force:mdapi:retrieve -s -r ./mdapipkg -u $1  -p $2  # Retrieve Metadata API Source from Package Name

unzip -o -qq ./mdapipkg/unpackaged.zip -d ./mdapipkg # Unzip the file

rm -rf ./manifest/ # If manifest directory exists delete it

mkdir ./manifest/ # Create a New Manifest Directory

cp -a ./mdapipkg/package.xml ./manifest/ # Copy package.XML to manifest directory

rm -rf ./mdapipkg # Delete the mdapipkg source

echo bash commands executed