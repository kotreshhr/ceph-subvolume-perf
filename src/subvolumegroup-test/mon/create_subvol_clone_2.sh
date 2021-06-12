# Create snapshot clone of each subvolume in group_$i/sub_$i
for i in {1..1000}
do
   echo "subvolume clone - group_1/snap_$i"
   ceph fs subvolume snapshot clone test-vol sub_$i snap1_$i gr_${i}_sub_${i}_clone1_${i} --group-name=group_1 --target-group-name=group_1
done
