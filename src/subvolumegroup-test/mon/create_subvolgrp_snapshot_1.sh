# Create snapshot of each subvolumegroup of group_$i
for i in {4..1000}
do
   echo "subvolumegroup snap - group_$i"
   ceph fs subvolumegroup snapshot create test-vol group_$i snap_group1_$i
done
