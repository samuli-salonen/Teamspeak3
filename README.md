# Teamspeak3 bash script installation
This github repository is created to Install teamspeak 3 server by running bash script (tested on ubuntu 18.04.01 server using "default" GNU bash)
Note: I will update the script as the server files get updated. (Currently 3.5.1)

(teamspeak 3.5.1 server files: https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2)

You only need to add 2 commands below!

    sudo wget https://raw.githubusercontent.com/samuli-salonen/Teamspeak3/master/run.sh
    
    sudo bash run.sh
 
You have to add user details when asked during installation, but you can just leave details empty.

Wait for the rest to install.
Done!

You can do:
     
     sudo service teamspeak status

To check your teamspeak3 server status and get admin token.


sources:

https://teamspeak.com/en/ (files)

https://www.vpsserver.com/community/tutorials/3916/how-to-setup-teamspeak-server-on-linux/ (commands slightly updated)


keywords:
How to install ts3 server , teamspeak 3 , TS3 , 3.5.1 version , teamspeak installation , bash script install , ubuntu 
teamspeak install , 18.04.1 ts3 server , ts3 config , teamspeak 3 configuration 
