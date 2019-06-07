#!/bin/bash

curl "http://localhost:4741/gamelist" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "game_list": {
      "title": "'"${TITLE}"'",
      "system": "'"${SYSTEM}"'",
      "player_count": "'"${PLAYER}"'",
      "sessions_count": "'"${SESSIONS}"'",
      "description": "'"${DESC}"'",
      "start_date": "'"${DATE}"'"
    }
  }'

echo
