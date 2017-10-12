SET _ROOT=D:\source\qt5\qtbase
cd %_ROOT%
git submodule foreach --recursive "git clean -dfx" && git clean -dfx