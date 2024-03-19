#!/bin/bash



echo "Below is S3 bucket details"
aws s3 ls


echo "Below are IAM users"

aws iam list-users | jq '.Users[].UserName'



