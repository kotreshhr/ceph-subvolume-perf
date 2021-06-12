# Create snapshot of each subvolume in group_1/sub_$i
for i in {1..1000}
do
   echo "subvolume snap - group_1/sub_$i"
   ceph fs subvolume snapshot create test-vol sub_$i snap1_$i --group-name=group_1
done
