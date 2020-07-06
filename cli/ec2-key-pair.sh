#!/usr/bin/env bash
aws ec2 create-key-pair \
--key-name dev-test-key \
--tag-specifications 'ResourceType=key-pair,Tags=[{Key=Owner,Value=WebDevCorp}]'

## If you think you do need the ssh key anymore, then just delete it with the below command.
aws ec2 delete-key-pair --key-name dev-test-key