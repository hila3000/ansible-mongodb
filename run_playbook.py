import subprocess
command = 'ansible-playbook main.yaml -i inventory'
process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE)
process.wait()
print process.returncode
