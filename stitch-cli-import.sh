#!/bin/sh
source .env
stitch-cli login --api-key=$STITCH_API_PUBLIC_KEY --private-api-key=$STITCH_API_PRIVATE_KEY

echo "Copy our content into the Stitch Hosting area..."
cp -R *html *js css vendor ./stitch/hosting/files

stitch-cli import \
  --app-id=$STITCH_APP_ID \
  --include-hosting \
  --path=./stitch
 
