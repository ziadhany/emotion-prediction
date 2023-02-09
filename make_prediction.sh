#!/usr/bin/env bash

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d 'w3review=I%27am+very+angry'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/classify
