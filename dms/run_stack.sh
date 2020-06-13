#!/usr/bin/env bash

## First time creation
aws cloudformation create-stack  \
--stack-name dev-basic-dms-stack   \
 --template-body file://dms/dms.json \
 --tags Key=Owner,Value=WebDevCorp Key=BillTag,Value=arn:aws:cloudformation:us-east-1:0000000000:stack/basic-dms-stack

### Need to udate stack
aws cloudformation create-stack  \
--stack-name dev-basic-dms-stack   \
 --template-body file://dms/dms.json \
 --tags Key=Owner,Value=WebDevCorp Key=BillTag,Value=arn:aws:cloudformation:us-east-1:0000000000:stack/basic-dms-stack

### Delete stack
aws cloudformation delete-stack  --stack-name dev-basic-dms-stack
