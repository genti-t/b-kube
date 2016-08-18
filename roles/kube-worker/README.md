kube-worker
================

Role for deploying kube-worker nodes

Example Playbook
----------------
    - hosts: kube-worker
      gather_facts: False
      become: yes
      become_method: sudo
      roles:
        - kube-worker

License
-------
BSD

Author Information
------------------
This role was created in 2016 by Genti Topija
