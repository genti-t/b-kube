etcd
================

Role for deploying etcd cluster

Requirements
------------
    - cfssl generated Certificates

Example Playbook
----------------
    - hosts: etcd
      gather_facts: False
      become: yes
      become_method: sudo
      roles:
        - etcd

License
-------

BSD

Author Information
------------------
This role was created in 2016 by Genti Topija
