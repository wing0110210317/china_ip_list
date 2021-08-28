{
TZ="Asia/Shanghai" 
echo -e "#Last Modified: $(date)"
echo "/ip firewall address-list"
echo "remove [/ip firewall address-list find list=CNIP]"
nets=`cat ./chnroute.txt`
for net in $nets ; do
  echo "add list=CNIP address=$net "
done
} > chnroute.rsc 
