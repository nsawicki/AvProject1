#!/usr/bin/env bash
CONFIG_FILE=aws_config.json
export AWS_DEFAULT_REGION=$(jq -r '.AWS_DEFAULT_REGION' "$CONFIG_FILE")
export PROJECT=$(jq -r '.PROJECT' "$CONFIG_FILE")
export BUCKET=$(jq -r '.BUCKET' "$CONFIG_FILE")

echo "Region: $AWS_DEFAULT_REGION"
echo "Project: $PROJECT"
echo "Bucket: $BUCKET"
