# ansible-mongodb

This playbook will install mongodb 3.2 from mongodb repository and start the service.
No extra configuration on mongodb is defined.

First, run the ansible_prerequisits.sh file to install Ansible and define the ansible user ("Hila") and its SSH access.

Then, you can either run the playbook via ansible itself-
ansible-playbook main.yaml -i inventory

Or via Python script (available as well - run_playbook.py) - Just make sure the python script and the ansible-playbook file are in the same directory.
