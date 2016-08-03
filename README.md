# b-kube
**Multi-Node HA Kubernetes Cluster on Raspberry Pi**

Deploying kubernetes Cluster on cloud or on-premises, is not enough for people new to Kubernetes, to understand it.
So I decided to build my own version of Kubernetes cluster on Raspberry Pi, with etcd in multinode and Kubernetes in multi master mode.

This guide is for people looking for a fully automated command to bring up a Kubernetes cluster.


## Cluster Details
* OSes/boards
	* HypriotOS (hypriotos)
	* Raspberry Pi 2 Model B, armv7 (rpi-2)
	* Raspberry Pi 3 Model B, armv8, armv7 rootfs (rpi-3)
* Kubernetes 1.3.3
* Docker 1.11.2
* [CNI Based Networking](https://github.com/containernetworking/cni)
* Secure communication between all components (etcd, control plane, workers)
* Default Service Account and Secrets
* Addons-manager

## What do you need:
* Ansible (>=v.2.1.0.0)
* ssh-copy-id
* sshpass


## docs (to do) ...

### Work in proggress..
