#bin/bash teamspeak3 server installation script
echo -e "\E[1;33mTeamspeak 3 server is now installing, this will take 2-5 minutes. Please be patient."
sleep 2s
echo -e "\E[0m..."
sleep 5s
sudo echo -e 'deb cdrom:[Debian GNU/Linux 9.6.0 _Stretch_ - Official amd64 DVD Binary-1 20181110-11:34]/ stretch contrib main\ndeb http://security.debian.org/debian-security stretch/updates main contrib\ndeb-src http://security.debian.org/debian-security stretch/updates main contrib\ndeb http://archive.ubuntu.com/ubuntu bionic main restricted\ndeb http://archive.ubuntu.com/ubuntu bionic-updates main restricted\ndeb http://archive.ubuntu.com/ubuntu bionic universe\ndeb http://archive.ubuntu.com/ubuntu bionic-updates universe\ndeb http://archive.ubuntu.com/ubuntu bionic multiverse\ndeb http://archive.ubuntu.com/ubuntu bionic-updates multiverse\ndeb http://archive.ubuntu.com/ubuntu bionic-backports main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu bionic-security main restricted\ndeb-src http://archive.ubuntu.com/ubuntu bionic-security main restricted\ndeb http://archive.ubuntu.com/ubuntu bionic-security universe\ndeb-src http://archive.ubuntu.com/ubuntu bionic-security universe\ndeb http://archive.ubuntu.com/ubuntu bionic-security multiverse\ndeb-src http://archive.ubuntu.com/ubuntu bionic-security multiverse'|sudo tee /etc/apt/sources.list #Warning!! this will replace your sources list code with these!
sleep 5s #note that some times installation failes, because there is too many commands driven at once, this is fixed by adding sleep command after update, upgrade and installation commands like sudo apt-get upgrade.
sudo apt-get update #updates
sleep 20s
sudo apt-get -y upgrade #upgrades
sleep 20s
sudo adduser teamspeak --gecos ",,," --disabled-login #new user for teamspeak files. Also for security.
sleep 5s
sudo wget https://files.teamspeak-services.com/releases/server/3.13.2/teamspeak3-server_linux_amd64-3.13.2.tar.bz2 #teamspeak 3 server files.
sleep 15s
tar -jxvf teamspeak3-server_linux_amd*.tar.bz2 #unzips teamspeak3 server
sleep 20s
sudo mv teamspeak3-server_linux_amd64 /usr/local/teamspeak #moves files to the teamspeak user on server
sleep 7s
sudo chown -R teamspeak:teamspeak /usr/local/teamspeak #permission configuration
sleep 5s
sudo ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak #creates symlink
sleep 10s
sudo update-rc.d teamspeak defaults #updates services
sleep 10s
sudo apt-get install ufw -y
sleep 10s
sudo ufw allow 9987/udp #firewall rules to allow ts3
sleep 5s
sudo ufw allow 10011/tcp #-''-
sleep 5s
sudo ufw allow 30033/tcp #-''-
sleep 5s
sudo ufw enable #enables ubuntu firewall
sleep 5s
sudo echo ''|sudo tee /usr/local/teamspeak/.ts3server_license_accepted #makes file to accept the ts3 server eula
sleep 5s
sudo service teamspeak start #starts the server
sleep 2s
echo -e "\E[1;33mTeamspeak 3 server has been installed! you can do: sudo service teamspeak status to see the admin token."
sleep 2s
echo -e "\E[0m..."
