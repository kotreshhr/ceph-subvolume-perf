# Create snapshot of each subvolume in group_$i/sub_$i
for i in {2..1000}
do
   echo "subvolume clone - group_$i/sub_$i"
   ceph fs subvolume snapshot clone test-vol sub_$i snap1_$i gr_${i}_sub_${i}_clone1_${i} --group-name=group_$i --target-group-name=group_$i
done
