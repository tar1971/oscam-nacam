#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tar1971/oscam-nacam/main/installer1.sh -O - | /bin/sh
##
###########################################
###########################################
#!/bin/sh
#

wget -O /tmp/osdreambox_11.708-emu-r798_all.deb "https://github.com/tar1971/oscam-nacam/blob/main/enigma2-plugin-softcams-oscam-osdreambox_11.708-emu-r798_all.deb?raw=true"
wait
apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install
wait
dpkg -i --force-overwrite /tmp/*.deb
wait
sleep 2;
###########################################
###########################################
echo ""
# Download and install plugin
cd /tmp
set -e
     wget "$MY_URL/$MY_IPK"
  wait
     wget "$MY_URL/$MY_DEB"

 if which dpkg > /dev/null 2>&1; then
		dpkg -i --force-overwrite $MY_DEB; apt-get install -f -y
	else
		$OPKGINSTALL $MY_IPK
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK
rm -f /tmp/$MY_DEB
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"