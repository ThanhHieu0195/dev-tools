#!/bin/bash
msg=$1
dt=$(date +'%d%m%y %H:%M:%S')
curl -X POST -H 'Content-type: application/json' --data "{'text':'[$dt] $msg'}" https://hooks.slack.com/services/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