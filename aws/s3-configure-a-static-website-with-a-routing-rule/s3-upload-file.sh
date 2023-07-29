#!/bin/sh
# setup aws profile before running the script

aws s3 cp index.html s3://public-bucket-account-id/ --profile $1
aws s3 cp error.html s3://public-bucket-account-id/ --profile $1