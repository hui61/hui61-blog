#! /bin/bash -ex

source ./aws-credentials.sh

hugo

aws s3 rm s3://hui61.com --recursive
aws s3 cp public s3://hui61.com/ --recursive



