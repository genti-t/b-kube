kube-controller
================

Role for deploying kube-controller nodes, includes keepalived and haproxy for kube-apiserver HA

Example Playbook
----------------
    - hosts: kube-controller
      gather_facts: False
      become: yes
      become_method: sudo
      roles:
        - kube-controller

License
-------

BSD

Author Information
------------------
This role was created in 2016 by Genti Topija
