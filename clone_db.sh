#!/bin/bash
array=('mm2' 'esp')
echo "Please type dbName which you want dump ... (${array[@]})"
dbName=$1
if [ -z "$dbName" ];then
    read dbName
fi

if [[ " ${array[@]} " =~ " $dbName " ]]; then
    dbNameTemp="${dbName}_temp"
    pathTar="$(ls -tr db/$dbName*.tar|head -1|sed 's/.tar//g')"
    pathSql="$(echo $pathTar | sed 's/db\///g').sql"
    echo 'excuting ... '$dbName'_temp'
    echo "path tar: $pathTar"
    echo "path sql: $pathSql"

    source ./db/$dbName'_temp_config.conf';

    export PGPASSWORD=$password
    
    tar -xf $pathTar.tar

    
    # echo 'delete old db .. ' $database 
    # psql -h $host -U $user -d defaultdb -p $port -c "drop database $database;"
    # psql -h $host -U $user -d defaultdb -p $port -c "create database $database;"
    psql -h $host -U $user -d $database -p $port < ./$pathSql


    echo "remove SQL: $pathSql"
    rm -rf $pathSql
  
else
    echo "sorry! your input not match"
fi
