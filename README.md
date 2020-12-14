<a href="https://github.com/melvin-suter"><img src="https://avatars0.githubusercontent.com/u/44713851?s=460&u=148fbcdfec403787f2c88c4a49977dd94666ceb3&v=4" alt="melvin-suter" width="250px"/></a>

# ansible.webserver

This Ansible Role configure and updates a LEMP stack, as well as deploys websites.

Installation with One-Line-setup:

``` bash
curl https://raw.githubusercontent.com/melvin-suter/ansible.webserver/master/setup.sh | sh
```

Installation with ansible-galaxy:

``` bash
ansible-galaxy install melvin_suter.webserver
```

## Requirements

* Currently only tested with CentOS 8
* Ansible 2.9 or higher is required for this Ansible Role

## Dependencies

This Ansilbe Role has dependencies to:
* `uniqconsulting.os_basic`
* `uniqconsulting.open_vm_tools`
* `uniqconsulting.firewall`
* `uniqconsulting.nginx`
* `uniqconsulting.php`
* `uniqconsulting.mariadb`