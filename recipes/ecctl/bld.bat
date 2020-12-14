:: Turn work folder into GOPATH
set GOPATH=%SRC_DR%
set PATH=%GOPATH%\bin:%PATH%

:: Build
go build -v -o %PKG_NAME%.exe .
if errorlevel 1 exit 1

:: Install Binary into %PREFIX%\bin
mkdir -p %PREFIX%\bin
if errorlevel 1 exit 1

mv %PKG_NAME% %PREFIX%\bin\%PKG_NAME%
if errorlevel 1 exit 1
