cd /usr/local/src
git clone https://gitlab.com/tuxecure/dwnity/fust
cd fust
make clean install
cd ..
git clone https://gitlab.com/tuxecure/dwnity/dfuse
cd dfuse
git submodule update --init --recursive
make clean install
cd ..
git clone https://gitlab.com/tuxecure/dwnity/fusedwm
cd fusedwm
make clean install
cd ..
git clone https://gitlab.com/tuxecure/dwnity/fusemoji
cd fusemoji
make install
