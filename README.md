# Teamspeak3 bash script installation
This github repository is created to Install teamspeak 3 server by running bash script (tested on ubuntu 18.04.01 server using "default" GNU bash)
Note: I will update the script as the server files get updated. (Currently 3.5.1 TS3 version)


My code is simple and easy to understand and modify, also it also works!

You can see my bash scripts here:

https://github.com/samuli-salonen/Teamspeak3/blob/master/run.sh

https://github.com/samuli-salonen/Teamspeak3/blob/master/saltrun.sh
(You can also run this without salt!)

(teamspeak 3.5.1 server files: https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2)

You only need to do 2 commands below! <---------------------------------------------------

    sudo wget https://raw.githubusercontent.com/samuli-salonen/Teamspeak3/master/run.sh
    
    sudo bash run.sh
 
You have to add user details when asked during installation, but you can just leave details empty like below and remember to type "y" and press enter.

![Like here](https://github.com/samuli-salonen/Teamspeak3/blob/master/ts3-user.PNG)

Wait for the rest to install.

Done!

Now you can do:
     
     sudo service teamspeak status

To check your teamspeak3 server status and get admin token.


sources:

https://teamspeak.com/en/ (files)

https://www.vpsserver.com/community/tutorials/3916/how-to-setup-teamspeak-server-on-linux/ (commands slightly updated)



# Teamspeak3 salt module installation

(tested on ubuntu 18.04.01 server using "default" GNU bash)
To install teamspeak3 using salt and bash script you must go to /srv/salt/ and do these commands:

    sudo wget https://raw.githubusercontent.com/samuli-salonen/Teamspeak3/master/TS3_salt_module.sls

And 
   
    sudo wget https://raw.githubusercontent.com/samuli-salonen/Teamspeak3/master/saltrun.sh
    
saltrun.sh is slightly edited from run.sh, that it does automatically add user and configures it.
    
And last
               
    sudo wget https://raw.githubusercontent.com/samuli-salonen/Teamspeak3/master/top.sls
    

You can also do clone my git to /srv/salt/:
       
    sudo git clone https://github.com/samuli-salonen/Teamspeak3.git

BUT you have to edit TS3_salt_module to run the module properly.

    
If you do not want to replace yor top.sls you still have to mention TS3_salt_module in top.sls:

(like so: https://github.com/samuli-salonen/Teamspeak3/blob/master/top.sls )

So your /srv/salt/ directory should look like this:


![Like here](https://github.com/samuli-salonen/Teamspeak3/blob/master/srv-salt.PNG)


And run it by:
    
    sudo salt 'SLAVE_NAME' state.highstate
    
And wait 5 minutes.
    
keywords:
How to install ts3 server , teamspeak 3 , TS3 , 3.5.1 version , teamspeak installation , bash script install , ubuntu 
teamspeak install , 18.04.1 ts3 server , ts3 config , teamspeak 3 configuration , teamspeak 3 salt module , teamspeak 3 salt installation
