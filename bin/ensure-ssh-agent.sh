AGENT_SCRIPT=${HOME}/load-agent.sh

while true; do
    [ -r ${AGENT_SCRIPT} ] && source ${AGENT_SCRIPT}
    if [ -n "$SSH_AGENT_PID" ]; then 
        # ensure the variable actually reflects a running ssh-agent process
        ps -p $SSH_AGENT_PID | grep -q ssh-agent$ && break
    fi
    # SSH_AGENT_PID is either not set or has stale PID
    echo "Running ssh-agent"
    ssh-agent > ${AGENT_SCRIPT}
    sleep 1
done
