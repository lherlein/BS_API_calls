#Registry dump
date_time=$(date) #pull date/time
msg="pre reboot logs "

touch registry_dump.txt #create output file

echo "${msg} ${date_time}" > registry_dump.txt #put message and date/time into output file

curl 192.168.1.9/api//v1/registry > registry_dump_a.txt

cat registry_dump_a.txt >> registry_dump.txt #concatenate files

rm registry_dump_a.txt #delete temp log file
