# kubernetes-configs

### Nginx Ingress
Required to run Docker Registry & Samba
```
./system-tools/nginx-ingress/scripts/deploy.sh
```

### Docker Registry
Required to run Samba
```
./system-tools/insecure-docker-registry/scripts/deploy.sh
```

### Samba Server
Use `vagrant ssh` to access Kubernetes server

```
sudo mkdir /host
exit
```

Run the following setup scripts from this repo
```
./system-tools/samba-server/scripts/build.sh
./system-tools/samba-server/scripts/deploy.sh
```

### Samaba (host storage)
```
sudo mkdir /host
```

Add to end of `/etc/fstab`

```
//samba.k8s/host /host cifs  username=kubernetes,password=kubernetes,uid=1000,iocharset=utf8,sec=ntlm  0  0
```

### NFS (local storage)
```
sudo mkdir /local
sudo chmod 777 /local
```

```
sudo apt-get install nfs-kernel-server
```

Add to end of `/etc/exports`
```
/local 172.17.4.99(rw,insecure,sync,no_subtree_check,no_root_squash)
```

Restart nfs server
```
service nfs-kernel-server restart
```

### Hosts
Add to `/etc/hosts`

```
172.17.4.99	samba.k8s
172.17.4.99	docker.k8s
```
