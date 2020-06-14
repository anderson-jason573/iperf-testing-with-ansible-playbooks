# GWL-NewDC Project

# Collection of Bash and YAML scripts being used with Ansible for the lab I created
  to test and vet configurations for Orchestrator and Silver Peak appliances, for GWL's new
  DC project.

# The purpose of these scripts is to initiate iperf sessions between three servers
  designated as 'iperf clients' and three servers designated as 'iperf servers'.  The
  goal is to generate enough 'source IP' and 'destination IP' pairs, for ecmp testing
  through the silver peak fabric.
  
# Servers 1 - 3 are 'iperf clients'
# Servers 4 - 6 are 'iperf servers'

# Bash scripts are placed on their respecetive servers, to initiate iperf sessions.
  Servers designated as 'iperf servers' get the 'server.sh' bash script.  This script
  is the same for all servers.
  
#  Servers designated as 'iperf clients', get six bash scripts, designated 'test1.yml'
   through 'test6.yml'.  Although the scripts are named the same for each server, they
   are different in which server they are targeting for each iperf session.

#  There are six Ansible playbooks (yaml scripts), named 'tes1.yml' through 'test6.yml'.
   Each playbook will kick off the 'server.sh' script on the designated 'iperf servers',
   and the cooresponding test script on the 'iperf clients'.

# Ansible playbooks (yaml scripts) executed with command:
  "ansible-playbook <yaml file>";
  for example:
       "ansible-playbook test1.yml"
       
# Ansible host groupings are detailed in the '/etc/ansible/hosts' file.

# "&>/dev/null &" is used in the bash files, to send output to a bit bucket
     instead of the screen.  This allows us to access the server, without
     interrupting the iperf process.
     
# end
