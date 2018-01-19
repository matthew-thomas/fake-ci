@echo off

SET BUILD_TOOLS_PATH=build-tools
SET NUGET_PATH=%BUILD_TOOLS_PATH%\nuget
SET NUGET_PACKAGES_PATH=%NUGET_PATH%\packages

%NUGET_PATH%\NuGet.exe restore %NUGET_PATH%\packages.config -PackagesDirectory %NUGET_PACKAGES_PATH%
%NUGET_PACKAGES_PATH%\FAKE.4.64.4\tools\FAKE.exe %BUILD_TOOLS_PATH%\build.fsx %1