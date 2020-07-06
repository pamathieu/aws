#!/usr/bin/env bash

aws cloudformation create-stack \
 --stack-name dev-raid-stack \
 --template-body file://cloudformation/ec2-raid.yml \
 --tags Key=Owner,Value=WebDevCorp \
 --parameters file://cloudformation/ec2-raid-param.json

aws cloudformation describe-stacks --stack-name dev-raid-stack

aws cloudformation update-stack \
 --stack-name dev-raid-stack \
 --template-body file://cloudformation/ec2-raid.yml \
 --tags Key=Owner,Value=WebDevCorp \

aws cloudformation delete-stack --stack-name dev-raid-stack


