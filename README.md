# Collection of Bash and YAML scripts being used with Ansible

The purpose of these scripts is to initiate iperf sessions between three servers
designated as 'iperf clients' and three servers designated as 'iperf servers'.  
  
Servers 1 - 3 are 'iperf clients'
Servers 4 - 6 are 'iperf servers'

Bash scripts are placed on their respecetive servers, to initiate iperf sessions.
Servers designated as 'iperf servers' get the 'server.sh' bash script.  This script
is the same for all servers.
  
Servers designated as 'iperf clients', get six bash scripts, designated 'test1.yml'
through 'test6.yml'.  Although the scripts are named the same for each server, they
are different in which server they are targeting for each iperf session.

There are six Ansible playbooks (yaml scripts), named 'tes1.yml' through 'test6.yml'.
Each playbook will kick off the 'server.sh' script on the designated 'iperf servers',
and the cooresponding test script on the 'iperf clients'.

Ansible playbooks (yaml scripts) executed with command:
"ansible-playbook <yaml file>";
 for example:
     "ansible-playbook test1.yml"
       
Ansible host groupings are detailed in the 'ansible_server/hosts_file.txt' file, which is
normally found at '/etc/ansible/hosts'.

"&>/dev/null &" is used in the bash files, to send output to a bit bucket
   instead of the screen.  This allows us to access the server, without
   interrupting the iperf process.
     
end
