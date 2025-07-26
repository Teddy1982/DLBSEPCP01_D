#!/bin/bash

STACK_NAME="portfolio"
TEMPLATE="portfolio.json"
PARAMS="parameters.json"
REGION="us-east-1"

aws cloudformation deploy \
  --region $REGION \
  --stack-name $STACK_NAME \
  --template-file $TEMPLATE \
  --parameter-overrides file://$PARAMS \
  --capabilities CAPABILITY_NAMED_IAM

echo "Stack $STACK_NAME deployment gestartet."