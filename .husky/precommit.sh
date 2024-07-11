#!/bin/sh
FILE="./wrangler.toml"
ASSETS="./assets"
if [ -f "$FILE" ]; then
  sed -i -e 's/account_id = ".*"/account_id = "**********"/' $FILE
  echo "$FILE updated"
  git add -A
  rm $ASSETS/*
else
  echo "$FILE does not exist."
fi

