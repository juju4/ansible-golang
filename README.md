[![Build Status - Master](https://travis-ci.org/juju4/ansible-golang.svg?branch=master)](https://travis-ci.org/juju4/ansible-golang)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-golang.svg?branch=devel)](https://travis-ci.org/juju4/ansible-golang/branches)

[![Actions Status - Master](https://github.com/juju4/ansible-golang/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-golang/actions?query=branch%3Amaster)
[![Actions Status - Devel](https://github.com/juju4/ansible-golang/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-golang/actions?query=branch%3Adevel)

# Go language setup ansible role

Ansible role to install go compiler from Google Archive
https://golang.org/

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.5

### Operating systems

Tested on Ubuntu 14.04, 16.04, 18.04 centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.golang
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.golang
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.golang/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

