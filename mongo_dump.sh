#!/bin/bash
mongodbconnection=mongodb://superAdmin:password123321!@178.128.214.251:27020/feathers_webservice
host=178.128.214.251/feathers_webservice
username=superAdmin
pass=password123321!
database=feathers_webservice
port=27020

# echo "mongodump -h $host --port $port -u $user -p $pass --db $database"
echo $pass
mongo --host $host --port $port --username $username --password --authenticationDatabase feathers_webservice