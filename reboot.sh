date_time=$(date)
msg="pre reboot logs "

touch output_log.txt

echo "${msg} ${date_time}" > output_log.txt

curl 192.168.1.9/api//v1/logs/ -o output_log_a.txt

cat output_log_a.txt >> output_log.txt

rm output_log_a.txt

curl -X PUT 192.168.1.9/api//v1/control/reboot/