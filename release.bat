call SetupT8SuitePro\version.bat
devenv T8.sln /Rebuild Release /project SetupT8Suite
mkdir C:\users\mattias\Dropbox\public\T8Suite\%T8.version%
xcopy SetupT8SuitePro\version.bat C:\users\mattias\Dropbox\public\T8Suite\%T8.version%\
xcopy SetupT8SuitePro\Release\T8Suite.msi C:\users\mattias\Dropbox\public\T8Suite\%T8.version%\

echo ^<?xml version="1.0" encoding="utf-8"?^>  > C:\users\mattias\Dropbox\public\T8Suite\version.xml
echo ^<t8suitepro version="%T8.version%"/^> >> C:\users\mattias\Dropbox\public\T8Suite\version.xml

git tag T8suite_v%T8.version%
git tag SetupT8suite_v%SetupT8Suite.version%