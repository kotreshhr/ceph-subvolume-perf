# Creates 1k files in each subvolume of subvolumegroup group_1

for i in {1..1000}
do
   path=$(ceph fs subvolume getpath test-vol sub_$i group_1)
   for j in {1..1000}
   do
     echo "test data ........" > /mnt$path/file_$j
   done
done

