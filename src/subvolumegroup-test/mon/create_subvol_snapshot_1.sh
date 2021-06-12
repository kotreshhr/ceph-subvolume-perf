# Create snapshot of each subvolume in group_$i/sub_$i
for i in {2..1000}
do
   echo "subvolume snap - group_$i/sub_$i"
   ceph fs subvolume snapshot create test-vol sub_$i snap1_$i --group-name=group_$i
done
