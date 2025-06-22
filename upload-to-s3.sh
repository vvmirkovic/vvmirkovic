#!/bin/bash

REGION="us-east-1"  # Change to your region


# Upload to S3 with correct folder structure
echo "Uploading to S3 bucket: $BUCKET_NAME"

aws s3 cp index.html  s3://$BUCKET_NAME/index.html \
    --region $REGION \

aws s3 cp game/index.html  s3://$BUCKET_NAME/game/index.html \
    --region $REGION \

echo "Upload complete!"
