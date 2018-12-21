/srv/salt/saltrun.sh:
  cmd.script:
    - name: saltrun.sh
    - source: salt://saltrun.sh
    - creates:
      - /usr/local/teamspeak/ts3_install_done.log

#This module runs script, that installs teamspeak3 server, it also creates ts3_install_done.log file.
