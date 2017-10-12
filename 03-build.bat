REM Set up \Microsoft Visual Studio 2015, where <arch> is \c amd64, \c x86, etc.

CALL "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86

REM Edit this location to point to the source code of Qt

SET _ROOT=D:\build\qt5

SET PATH=%_ROOT%\qtbase\bin;%_ROOT%\gnuwin32\bin;%PATH%

REM Uncomment the below line when using a git checkout of the source repository
SET PATH=%_ROOT%\qtrepotools\bin;%PATH%

REM Uncomment the below line when building with OpenSSL enabled. If so, make sure the directory points
REM to the correct location (binaries for OpenSSL).
SET PATH=C:\OpenSSL-Win32\bin;%PATH%

cd %_ROOT%

call configure -opensource -confirm-license -prefix ../dist -platform win32-msvc2015 -release -opengl dynamic -no-qml-debug -feature-proprietary-codecs -no-feature-spellchecker -no-feature-pepper-plugins -nomake examples -nomake tests

nmake module-qtwebengine

rem nmake
rem nmake install

rem -openssl -I C:\OpenSSL-Win32\include

cmd /k