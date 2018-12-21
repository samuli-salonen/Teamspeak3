/srv/salt/run.sh:
  cmd.script:
    - name: run.sh
    - source: salt://run.sh
    - creates:
      - /etc/teamspeak/ts3_done.log
