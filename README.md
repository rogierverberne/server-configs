# Custom Kodi / Retro Pi


## Prerequisites
* Docker for Windows (not Docker Toolbox)
* Hyper-V enabled
* id_rsa and id_rsa.pub in ```/credentials/ssh/``` (generate them yourself)

## How to run
1. Run the control (Ansible) client with:
    ```powershell
    .\run.ps1
    make all
    ```
2. Manually do all the changes described in [CHANGELOG-ROGIER.md](CHANGELOG-ROGIER.md)

## Core configuration
The core configuration can be found at ```/playbooks/Makefile``` which you should run in the Ansible control container by:
```bash
make all
```

## Components
* [/ansible-control](/ansible-control): The control host for Ansible in a Docker container
* [/playbooks](/playbooks): The playbooks collection to manage servers
* [/credentials](/credentials): Place your credentials here (and ```.gitignore``` them)

## Running on Windows with Powershell
Sometimes Powershell gives the error "run.ps1 is not digitally signed. You cannot run this script on the current system."
Please use the following command in a Powershell window as Administrator to (permanently solve this)
```powershell
Set-ExecutionPolicy unrestricted
```
