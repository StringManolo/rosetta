#!/usr/bin/bash

url=0;
h=0;
for (( i=1; i <= "$#"; i++ )) do
  if [[ ${!i} == "-h" || ${!i} == "--help" ]]; then
    h=1;
  fi

  next=$((i+1));
  if [[ ${!i} == "-u" || ${!i} == "--url" ]]; then
    url=$(echo "${!next}"); 
  fi

done

if [[ "$h" == 1 ]]; then
  echo "Usage: bash fetchWebpage.sh --url https://example.com";
  kill -s SIGINT $(pgrep -f $0);
fi

if [[ "$url" == 0 || "${#url}" < 10 ]]; then
  echo "Missing argument --url https://example.com";
  kill -s SIGINT $(pgrep -f $0);
fi


webpage=$(curl --silent "$url");
echo "$webpage";
