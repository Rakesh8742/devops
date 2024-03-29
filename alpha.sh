#!/bin/bash



echo "Below is S3 bucket details"
aws s3 ls


echo "Below are IAM users"

aws iam list-users | jq '.Users[].UserName'

echo "Below are active ec2 instances"

aws ec2 describe-instance-status | jq '.InstanceStatuses[].InstanceId'

echo "Below are SG details"

aws ec2 describe-security-groups | jq '.SecurityGroups[].GroupName'




