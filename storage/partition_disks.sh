
sudo mkfs -t xfs /dev/nvme1n1
sudo mkdir /data
sudo mount /dev/nvme1n1 /data


sudo blkid # show block ids

echo "copy that block id, then"
echo "sudo vim /etc/fstab, add line"
echo "UUID=bba7313d-8a17-4f87-b264-73c0eceb9d2c /data  xfs  defaults,nofail  0  2"

