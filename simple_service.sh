#!/bin/bash

echo "HTTP/1.1 200 OK"
echo "Content-Type: application/json"
echo ""

echo "{
  "service": "simple-service",
  "message": "Hello from simple service!",
  "timestamp": $(date +%s)
}
