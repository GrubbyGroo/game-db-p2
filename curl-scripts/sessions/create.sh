curl "http://localhost:4741/sessions" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "session": {
      "game_list_id": "'"${GAME}"'",
      "session_num": "'"${NUM}"'",
      "session_date": "'"${DATE}"'",
      "players": "'"${PLAYERS}"'",
      "summary": "'"${SUMMARY}"'"
    }
  }'

echo
