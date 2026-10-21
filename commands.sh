#!/bin/bash

# List files in the private S3 bucket
aws s3 ls s3://clouderway-demo-ayush

# Read hello.txt directly from S3
aws s3 cp s3://clouderway-demo-ayush/hello.txt -

