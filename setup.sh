#!/bin/bash
echo "System Update and Upgrade..."
cd
#update and upgrade
apt update

wait
apt --assume-yes upgrade
wait

#install extra apt-get packages
apt-get -y install tor 
wait
systemctl enable tor
sleep 1
apt-get -y install apache2
wait
apt-get -y install python3
wait
apt-get -y install python3-pip
wait
clear
echo "Everything Updated...Setting up Proxychains."
sleep .5
clear
echo "Everything Updated...Setting up Proxychains.."
sleep .5
clear
echo "Everything Updated...Setting up Proxychains..."
sleep .5
clear
#Proxychain setup

cp -v /root/Kset/proxyconf/dhclient.conf /etc/dhcp/dhclient.conf
wait
clear
echo "Everything Updated...Setting up Proxychains."
sleep .5
cp -v /root/Kset/proxyconf/proxychains.conf /etc/proxychains.conf
wait
clear
echo "Everything Updated...Setting up Proxychains.."
sleep .5
clear
echo "Everything Updated...Setting up Proxychains..."
sleep .5
clear

echo "Everything Updated...Setting up Proxychains."
sleep .5
clear
echo "Everything Updated...Setting up Proxychains.."
sleep .5
clear
echo "Everything Updated...Setting up Proxychains..."
sleep .5
clear
echo "Proxychains Setup...Installing Git Hub Items..."

#Install Git hub items

if [ -d /root/impacket ]; then
ftest1=0
else 
ftest1=1
fi

if [ $ftest1 = 1 ]; then

git clone https://github.com/CoreSecurity/impacket.git
wait
cd
cd impacket
pip install .
wait
python setup.py install
wait
fi
#
if [ -d /root/mitmAP ]; then
ftest2=0
else 
ftest2=1
fi

#

if [ $ftest2 = 1 ]; then
cd
git clone https://github.com/xdavidhu/mitmAP.git
wait
fi

#
if [ -d /root/fluxion ]; then
ftest3=0
else 
ftest3=1
fi

#

if [ $ftest3 = 1 ]; then
https://github.com/FluxionNetwork/fluxion.git
wait
clear
echo "RUN ./fluxion.sh -i TO INSTALL"
sleep 5
fi
#

#
if [ -d /root/routersploit ]; then
ftest4=0
else 
ftest4=1
fi

#

if [ $ftest4 = 1 ]; then
git clone https://github.com/threat9/routersploit.git
wait
cd
cd routersploit
python3 -m pip install -r requirements.txt
wait
fi

if [ -d /root/blackeye ]; then
ftest5=0
else 
ftest5=1
fi

#

if [ $ftest5 = 1 ]; then
git clone http://github.com/thelinuxchoice/blackeye.git
wait
fi

cd
clear
echo "Gits Installed...Creating Custom Commands..."

file="news"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
file="internet"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
file="netfix"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
file="routs"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
file="meta"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
file="fluxion"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
file="mitmAP"
cp /root/Kset/bin/$file /usr/bin/$file
sleep 1
chmod +x /usr/bin/$file
sleep 1
chmod 775 /usr/bin/$file
sleep 1
echo "$file"
clear
echo "Done!"
sleep 2
clear


