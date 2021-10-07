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
git clone https://gitlab.com/tuxecure/dwnity/systemd-service-files
cd systemd-service-files
cp *.service /usr/lib/systemd/user/
readarray -t services < <(ls systemd-service-file/*.service)
for service in ${services[@]}
do
     ln -s /usr/lib/systemd/user/$service /usr/lib/systemd/user/graphical-session.target.wants/
done
