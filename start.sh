echo "*/1 * * * * python /bestrui/cf2dns_actions.py > /bestrui/cf.log 2>&1 " > /etc/crontabs/root 
crond
tail -f /bestrui/cf.log