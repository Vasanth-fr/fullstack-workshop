echo "============LOG ANALYSER REPORT================="
if [ -f "sample-log.txt" ]
then
	echo "FilePath: " $(realpath sample-log.txt)
else
	echo "File does not exist"
fi
echo "Total Lines: " $(wc -l sample-log.txt)
echo "------------------------------------------------"
echo "INFO:" $(grep -o "INFO" sample-log.txt | wc -l)
echo "WARNING: "$(grep -o "WARNING" sample-log.txt | wc -l)
echo ERROR: $(grep -o "ERROR" sample-log.txt | wc -l)
echo "------------------------------------------------"
echo "Unique IP addresses found:" $(grep -E -o "([0-9]{1,3}\.){3}[0-9]{1,3}" sample-log.txt | sort | uniq )





