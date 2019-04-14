#! /bin/bash

# Check arguments
if [ $# -eq 0 ]
then
  echo "No arguments supplied"
  exit 1
fi

# Build URL
url=""
echo "Beep-boop Coin-coin : $@"
for keyword in $@; do
  url="$url%20$keyword"
done

# Launch request
xdg-open "https://duckduckgo.com/?q=$url"