1. Set path off the tools installation to D:/JetBrains/Toolbox/
2. Make sure the Rider uses the D:/RiderXXX config
####3. mklink C:\Users\LZE\.nuget\packages D:\.nuget\packages
4. setx path "%path%;D:\Program Files (x86)\Microsoft Visual Studio\Shared\Python37_64"
5. setx NUGET_PACKAGES "D:\.nuget\packages"
6. setx NuGetCachePath "D:\.nuget\packages"
