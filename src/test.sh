#!/bin/bash

# Run the application
EXPECTED="Hello, World!"

OUTPUT=$(node -e "console.log(require('./app')('World'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "Test passed!"
else
  echo "Test failed!"
  echo "Expected: $EXPECTED"
  echo "Got: $OUTPUT"
  exit 1  
fi