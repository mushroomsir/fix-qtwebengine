cd ../
git clone git://code.qt.io/qt/qt5.git
cd qt5 
git checkout v5.9.3

perl init-repository -module-subset=essential,qtwebchannel,qtwebengine -f
cmd /k