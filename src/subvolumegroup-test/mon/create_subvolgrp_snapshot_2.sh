#Create the main snapshot of subvolumegroup group_1 group_2 group_3

for i in {1..1000}
do
   for j in {1..3}
   do
      echo "subvolumegroup snap - group_$j snap_test_group_${j}_${i}"
      ceph fs subvolumegroup snapshot create test-vol group_$j snap_test_group1_${j}_${i}
   done
done


