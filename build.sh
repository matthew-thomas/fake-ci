#!/bin/bash

BUILD_TOOLS_PATH=build-tools
NUGET_PATH=$BUILD_TOOLS_PATH/NuGet
NUGET_PACKAGES_PATH=$NUGET_PATH/packages

mono --runtime=v4.0 $NUGET_PATH/nuget.exe restore $NUGET_PATH/packages.config -PackagesDirectory $NUGET_PACKAGES_PATH
mono --runtime=v4.0 $NUGET_PACKAGES_PATH/FAKE.3.5.4/tools/FAKE.exe $BUILD_TOOLS_PATH/build.fsx $@