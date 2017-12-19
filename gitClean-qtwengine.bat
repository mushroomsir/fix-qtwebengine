SET _ROOT=D:\build\qt5\qtwebengine
cd %_ROOT%
git submodule foreach --recursive "git clean -dfx" && git clean -dfx