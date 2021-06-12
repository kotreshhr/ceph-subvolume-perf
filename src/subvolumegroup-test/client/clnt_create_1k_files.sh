for i in {1..1000}
do
   path=$(ceph fs subvolume getpath test-vol sub_$i group_$i)
   for j in {1..1000}
   do
 echo "test data ........" > /mnt$path/file_$j
   done
done
