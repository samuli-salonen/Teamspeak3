# Teamspeak3 fast installation
Installs teamspeak 3 server

This is fast shell script to install teamspeak 3 server to your ubuntu server distro.

(teamspeak 3.5.1 server files: https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2)

You only need to add 2 commands below!

    sudo wget https://raw.githubusercontent.com/samuli-salonen/Teamspeak3/master/run.sh
    
    sudo bash run.sh
 
You have to add user details when asked during installation.
Wait for the rest to install.
Done!

You can do:
     
     sudo service teamspeak status

To check your teamspeak3 server status and get admin token.


sources: 
https://teamspeak.com/en/ (files)

https://www.vpsserver.com/community/tutorials/3916/how-to-setup-teamspeak-server-on-linux/ (commands slightly updated)


