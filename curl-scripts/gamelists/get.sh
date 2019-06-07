#!/bin/bash

curl "http://localhost:4741/gamelist" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
