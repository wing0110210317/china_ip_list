{
TZ="Asia/Shanghai" 
echo -e "#Last Modified: $(date)"
echo "/ip firewall address-list remove [/ip firewall address-list find list=CNIP]"
echo "/ip firewall address-list"
nets=`cat ./chnroute.txt`
for net in $nets ; do
  echo "add list=CNIP address=$net "
done
echo "/log info \"Importing CN_IP_List finished!\""
} > chnroute.rsc 
