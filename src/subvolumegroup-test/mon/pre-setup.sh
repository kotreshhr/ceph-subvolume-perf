#======Create CephFS======
ceph fs volume create test-vol

#===================Create 1000 subvolume groups ====================
(time for i in {1..1000};do ceph fs subvolumegroup create test-vol group_$i;done;) > /root/subvolgrp_creation.out 2>&1

#===================Create 1000 subvolumes in group_$i =======================
(time for i in {1..1000};do ceph fs subvolume create test-vol sub_$i --group-name=group_$i;done;) > /root/subvol_creation_group_i.out 2>&1

#===================Create 1000 subvolumes in group_1 =======================
(time for i in {1..1000};do ceph fs subvolume create test-vol sub_$i --group-name=group_1;done;) > /root/subvol_creation_group_1.out 2>&1
