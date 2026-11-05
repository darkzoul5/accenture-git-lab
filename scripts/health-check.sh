#!/bin/bash

URL="http://3.252.53.94:8080"

echo "Running health check against: $URL"

# Use curl to fetch only the HTTP status code (-s for silent, -o /dev/null to hide output)
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "SUCCESS: Received HTTP 200 OK."
    exit 0
else
    echo "CRITICAL: Health check failed. Received HTTP $STATUS_CODE."
    exit 1
fi
