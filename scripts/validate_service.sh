#!/bin/bash
sleep 10
http_code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)
if [ "$http_code" -eq 200 ]; then
  echo "Health check passed: HTTP $http_code"
  exit 0
else
  echo "Health check failed: HTTP $http_code"
  exit 1
fi