#!/bin/bash
BUCKET_NAME="TestBucket"
aws s3api create-bucket --bucket $BUCKET_NAME --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1
aws s3api put-bucket-versioning --bucket $BUCKET_NAME --versioning-configuration Status=Enabled