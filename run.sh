sleep 5s
sudo apt-get update
sleep 50s
sudo apt-get -y upgrade
sleep 120s
sudo adduser --disabled-login teamspeak
sleep 5s
sudo wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2
sleep 15s
tar -jxvf teamspeak3-server_linux_amd*.tar.bz2
sleep 20s
sudo mv teamspeak3-server_linux_amd64 /usr/local/teamspeak
sleep 7s
sudo chown -R teamspeak:teamspeak /usr/local/teamspeak
sleep 5s
sudo ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak
sleep 10s
sudo update-rc.d teamspeak defaults
sleep 10s
sudo ufw allow 9987/udp
sleep 5s
sudo ufw allow 10011/tcp
sleep 5s
sudo ufw allow 3033/tcp
sleep 5s
sudo ufw enable
sleep 5s
sudo service teamspeak start
sleep 10s
