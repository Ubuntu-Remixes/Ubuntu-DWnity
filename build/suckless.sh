cd /usr/local/src
git clone https://gitlab.com/dwnity/fust
cd fust
make clean install
cd ..
git clone https://gitlab.com/dwnity/dfuse
cd dfuse
git submodule update --init --recursive
make clean install
cd ..
git clone https://gitlab.com/dwnity/fusedwm
cd fusedwm
make clean install
