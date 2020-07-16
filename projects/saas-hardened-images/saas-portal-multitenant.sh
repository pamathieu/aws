#!/usr/bin/env bash

aws cloudformation create-stack \
 --stack-name saas-portal-multitenant-stack \
 --template-body file://saas-portal-multitenant.yml \
 --tags Key=Owner,Value=WebDevCorp \
 --parameters file://saas-portal-multitenant-param.json

aws cloudformation describe-stacks --stack-name saas-portal-multitenant-stack

aws cloudformation update-stack \
 --stack-name saas-portal-multitenant-stack \
 --template-body file://saas-portal-multitenant-param.yml \
 --tags Key=Owner,Value=WebDevCorp \

aws cloudformation delete-stack --stack-name saas-portal-multitenant-stack

aws cloudformation create-change-set \
 --change-set-name saas-portal-multitenant-change-set  \
 --stack-name saas-portal-multitenant-stack  \
 --template-body file://saas-portal-multitenant.yml  \
 --tags Key=Owner,Value=WebDevCorp  \
 --parameters file://saas-portal-multitenant-param.json

aws cloudformation describe-change-set \
 --change-set-name saas-portal-multitenant-change-set  \
 --stack-name saas-portal-multitenant-stack

aws cloudformation execute-change-set \
   --change-set-name saas-portal-multitenant-change-set  \
   --stack-name saas-portal-multitenant-stack

