git clone git://code.qt.io/qt/qt5.git
git checkout 5.9.2
cd qt5 
perl init-repository -module-subset=essential,qtwebchannel,qtwebengine -f
cmd /k