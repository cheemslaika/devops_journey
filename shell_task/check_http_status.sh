#!/bin/bash

URL="https://guvi.in"

# Get HTTP status code
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

echo "HTTP Status Code for $URL : $HTTP_CODE"

# Check success or failure
if [[ $HTTP_CODE -ge 200 && $HTTP_CODE -lt 300 ]]; then
    echo "SUCCESS: Website is reachable"
else
    echo "FAILURE: Website is not reachable"
fi
