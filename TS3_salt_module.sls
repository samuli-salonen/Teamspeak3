/srv/salt/run.sh:
  cmd.script:
    - name: run.sh
    - source: salt://run.sh
    - creates:
- /etc/ts3_done.log
