#!/bin/sh
pwd
ls
FILE="./wrangler.toml"
if [ -f "$FILE" ]; then
  sed -i -e 's/account_id = ".*"/account_id = "123**********"/' $FILE
  echo "$FILE updated"
else
  echo "$FILE does not exist."
fi

