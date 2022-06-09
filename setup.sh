#Need jq to parse json file -- sudo apt install jq

value=$(curl 192.168.1.9/api//v1/control/local-dws/ | jq '.data.result.value')

echo ${value}

if [ value = "true " ]
then
	echo 'True'
else
	echo 'False'
fi