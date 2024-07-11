#!/bin/sh
ls
FILE="../wrangler.toml"
if [ -f "$FILE" ]; then
  sed -i '' -e 's/account_id = ".*"/account_id = "************"/' $FILE
else
  echo "$FILE does not exist."
fi

