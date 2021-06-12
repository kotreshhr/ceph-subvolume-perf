## on client
# Get admin secret
ceph auth ls

# cat /etc/ceph/ceph.conf on mon node to get mon ip
mount -t ceph <mon-ip>:6789:/ /mnt -o name=admin,secret=<secret>
mount -t ceph 192.168.129.134:6789:/ /mnt -o name=admin,secret=AQC9d89eYc7bARAA+xOANXKcDTy5CkESb1IHhA==
