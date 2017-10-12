SET _ROOT=D:\source\qt5
cd %_ROOT%
git submodule foreach --recursive "git clean -dfx" && git clean -dfx