#!/bin/bash

###########
#Author:Megha Modi
#Date:June 15th 2023
#Version: v1
#This script will report the AWS resource usage

# AWS S3
# AWS EC2
# AWS IAM
# AWS Lambda

#set -x

echo "List of S3 Buckets"
# list s3 buckets
aws s3 ls > resourceTracker

echo "List of EC2 instances"
# list EC2 instances
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

echo "List all the lambda functions"
#list AWS Lambda 
aws lambda list-functions >> resourceTracker

echo "List IAM users"
#list AWS IAM users
aws iam list-users >> resourceTracker

