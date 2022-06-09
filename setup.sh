#Need jq to parse json file -- sudo apt install jq

value=$(curl 192.168.1.9/api//v1/control/local-dws/ | jq '.data.result.value') 
#GET .json object that tells if dws is on or off
#DWS on if value = true, off if value = false
#value is located at data: result: value

if [ ${value} = "true" ] #Temp - goal: if true do nothing, if false turn on
then
	echo 'local-DWS is on'
else
	echo 'local-DWS is off, enabling... \n'
	curl -X PUT 192.168.1.9/api//v1/control/local-dws/
	echo 'local-DWS enabled'
fi
