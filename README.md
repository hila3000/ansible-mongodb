# ansible-mongodb

This playbook will install mongodb 3.2 from mongodb repository and start the service.
No extra configuration on mongodb is defined.

You can either run the playbook via ansible-
ansible-playbook main.yaml -i inventory

Or via Python script (available as well - run_playbook.py) - Just make sure the python script and the ansible-playbook file are in the same directory.
