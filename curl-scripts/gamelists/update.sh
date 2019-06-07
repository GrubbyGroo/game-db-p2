curl "http://localhost:4741/gamelist"/${ID} \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "game_list": {
      "title": "'"${TITLE}"'"
      "system": "'"${SYSTEM}"'",
      "player_count": "'"${PLAYER}"'",
      "session_count": "'"${SESSIONS}"'",
      "description": "'"${DESC}"'",
      "start_date": "'"${DATE}"'"
    }
  }'

echo
#
