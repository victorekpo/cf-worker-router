#!/bin/sh
FILE="./wrangler.toml"
if [ -f "$FILE" ]; then
  sed -i -e 's/account_id = ".*"/account_id = "**********"/' $FILE
  echo "$FILE updated"
  git add -A
  git status
  echo "git updated"
else
  echo "$FILE does not exist."
fi

