#!/bin/bash
array=('esp_prod' 'mm2_prod')
echo "Please type dbName which you want dump ... (${array[@]})"
read dbName
if [[ " ${array[@]} " =~ " $dbName " ]]; then
    echo 'excuting ... '$dbName
    source ./db/$dbName'_config.conf';

    export PGPASSWORD=$password
    namebk=$dbName-$database-$(date +'%d-%m-%y')
    echo 'Init configure';
    echo 'Dump db ...'
    pg_dump -v -h $host -U $user -d $database -p $port > db/$namebk.sql
    cd db;
    echo 'Zip db';
    tar -cf $namebk.tar $namebk.sql
    echo 'clear all'
    rm -rf $namebk.sql
    echo 'done! ... ' $namebk
else
    echo "sorry! your input not match"
fi
