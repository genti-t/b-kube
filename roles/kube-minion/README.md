kube-minions
================

Role for deploying kube-minions nodes

Example Playbook
----------------
    - hosts: kube-minions
      gather_facts: False
      become: yes
      become_method: sudo
      roles:
        - kube-minions

License
-------
BSD

Author Information
------------------
This role was created in 2016 by Genti Topija
