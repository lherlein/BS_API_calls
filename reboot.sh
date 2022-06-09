date_time=$(date) #pull date/time
msg="pre reboot logs "

touch output_log.txt #create output file

echo "${msg} ${date_time}" > output_log.txt #put message and date/time into output file

curl 192.168.1.9/api//v1/logs/ >> output_log_a.txt #GET logs

curl -X PUT 192.168.1.9/api//v1/control/reboot/ #reboot