## b-kube
#### Multi-Node HA Kubernetes cluster on Raspberry Pi.
##### What is this all about?

Deploying kubernetes Cluster on cloud or on-premises, is not enough for people new to Kubernetes, to understand it.
So I decided to build my own version of Kubernetes cluster on Raspberry Pi, with etcd in multinode and Kubernetes in multi master mode.


<hr>

Supported OSes/boards

* HypriotOS (hypriotos)
	* Raspberry Pi 2 Model B, armv7 (rpi-2)
	* Raspberry Pi 3 Model B, armv8, armv7 rootfs (rpi-3)

<br>

* What do you need:
	* Ansible (>=v.2.1.0.0)
	* ssh-copy-id
	* sshpass

<br>


* Procedures
	* Download and build a SD Card
	* Initialize (after first boot)
	* Start the play
