#bin/bash teamspeak3 server installation script
printf "This will take 5 minutes!"
sleep 5s #note that some times installation failes, because there is too many commands driven at once, this is fixed by adding sleep command after update, upgrade and installation commands like sudo apt-get upgrade.
sudo apt-get update #updates
sleep 50s
sudo apt-get -y upgrade #upgrades
sleep 50s
sudo adduser teamspeak --gecos ",,," --disabled-login #new user for teamspeak files. Also for security.
sleep 5s
sudo wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 #teamspeak 3 server files.
sleep 15s
tar -jxvf teamspeak3-server_linux_amd*.tar.bz2 #unzips teamspeak3 server
sleep 20s
sudo mv teamspeak3-server_linux_amd64 /usr/local/teamspeak #moves files to the teamspeak user on server
sleep 7s
sudo chown -R teamspeak:teamspeak /usr/local/teamspeak #permission configuration
sleep 5s
sudo ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak #adds auto start script
sleep 10s
sudo update-rc.d teamspeak defaults #updates services
sleep 10s
sudo ufw allow 9987/udp #firewall rules to allow ts3
sleep 5s
sudo ufw allow 10011/tcp #-''-
sleep 5s
sudo ufw allow 3033/tcp #-''-
sleep 5s
sudo ufw enable #enables ubuntu firewall
sleep 5s
sudo echo ''|sudo tee /usr/local/teamspeak/.ts3server_license_accepted #makes file to accept the ts3 server eula
sleep 5s
sudo service teamspeak start #starts the server
sleep 2s
echo "Server has been installed"