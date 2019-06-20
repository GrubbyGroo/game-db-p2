curl "http://localhost:4741/sessions" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "session": {
      "session_num": "'"${NUM}"'",
      "session_date": "'"${DATE}"'",
      "players": "'"${PLAYERS}"'",
      "summary": "'"${SUMMARY}"'"
    }
  }'

echo
