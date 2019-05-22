 
#Based on: https://github.com/ramontayag/rpi-playbooks
export ANSIBLE_HOST_KEY_CHECKING = False
all: create-user kodi-install ovpn retropi


##### Init Setup #####
	
.PHONY: create-user
create-user:
	ansible-playbook -i /playbooks/hosts /playbooks/roles/common/tasks/create-user.yml --ask-pass

.PHONY: remove-pi
remove-pi:
	ansible-playbook -i /playbooks/hosts /playbooks/roles/common/tasks/remove-pi-user.yml

.PHONY: kodi-install
kodi-install: 
	ansible-playbook -i /playbooks/hosts /playbooks/roles/kodi/tasks/install.yml

.PHONY: ovpn
ovpn:
	ansible-playbook -i /playbooks/hosts /playbooks/roles/ovpn/tasks/join.yml

.PHONY: retropi
retropi:
	ansible-playbook -i /playbooks/hosts /playbooks/roles/retropi/tasks/install.yml


.PHONY: fetch
fetch: 
	ansible-playbook -i /playbooks/hosts /playbooks/roles/kodi/tasks/fetch.yml

# .PHONY: memory-split
# memory-split:
# 	ansible-playbook -i /playbooks/hosts /playbooks/roles/common/tasks/prep-host.yml --ask-pass --ask-become-pass

	
# .PHONY: ssh-clean
# ssh-clean:
# 	ansible-playbook -i /playbooks/hosts /playbooks/roles/common/tasks/remove-pi-user.yml 


