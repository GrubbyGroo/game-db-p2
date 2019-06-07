#!/bin/bash

curl "http://localhost:4741/gamelist" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "game_list": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
