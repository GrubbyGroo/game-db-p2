curl "http://localhost:4741/sessions"/${ID} \
  --include \
  --request PATCH \
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
