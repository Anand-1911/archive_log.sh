#/usr/bin/ksh


DIR=$1
DATE=`date +"%Y%m%d%H%M%S"`
ARCHIVE="log_archive_$DATE"

if [[ $# -gt 1 ]]
then
    echo "Invalid arguments"
    echo "Usage: "
    echo "archive_log.sh <dir name>"
    exit 1
fi

cd $DIR

#Archiving the log files
echo "Archiving log files - start"

tar -cvf ${ARCHIVE}.tar.gz *.log

RC=$?

echo "RC : $RC"
if [[ $RC -eq 0 ]]
then
    echo "Log files archived successfully"
else
    echo "Log files archive Failed"
fi

echo "Archiving log files - End" 
