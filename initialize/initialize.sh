#!/bin/bash
. vars.cfg

echo "Discovering network ..."
sudo fing -n $network -o table,text,$fing_report_file,10 -r 1

node0_ip=$(grep $node0_mac $fing_report_file|awk '{print $4}')
node1_ip=$(grep $node1_mac $fing_report_file|awk '{print $4}')
node2_ip=$(grep $node2_mac $fing_report_file|awk '{print $4}')
node3_ip=$(grep $node3_mac $fing_report_file|awk '{print $4}')
node4_ip=$(grep $node4_mac $fing_report_file|awk '{print $4}')

node_list_ip="
$node0_ip
$node1_ip
$node2_ip
$node3_ip
$node4_ip
"
echo "[nodes]
node0   ansible_ssh_host=$node0_ip  management_ip=192.168.13.10
node1   ansible_ssh_host=$node1_ip  management_ip=192.168.13.11
node2   ansible_ssh_host=$node2_ip  management_ip=192.168.13.12
node3   ansible_ssh_host=$node3_ip  management_ip=192.168.13.13
node4   ansible_ssh_host=$node4_ip  management_ip=192.168.13.14

[nodes:vars]
ansible_ssh_user=$ansible_ssh_user
ansible_ssh_port=22
ansible_ssh_private_key_file=~/.ssh/id_rsa " > hosts

echo "Inject ssh certificate"
for node in ${node_list_ip}; do
  echo "
Host $node
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
" >> ~/.ssh/config
  sshpass -f ../files/password.txt  ssh-copy-id -i  ~/.ssh/id_rsa  $ansible_ssh_user@$node;
done

ansible-playbook -i hosts bootstrap.yml
