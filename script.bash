#!bash/bin/bash
host=$1
database=$2
dbUser=$3
password=$4
if ["$database"=""];then
  echo "Error: check name of database"
fi
clear
for sql_file in *.sql; do
 echo "Importing $sql_file";
 mysql --host=$host --user=$user --password=$passwd $db< $sql_file;
done  
