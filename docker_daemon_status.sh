for i in `cat dev_servers.txt`; do echo $i; ssh -q user@$i systemctl status docker | grep Active | awk '{ print $2} '; ssh -q user@$i uptime; echo "===============================" ; done
