#!/usr/bin/env bash

function is_number {
  echo $1 | egrep "^(\-?)[0-9]+$" | wc -w
}

echo "How many files are in the current directory?"
correct=$( ls | wc -l )
read answer

while (( !$( is_number $answer ) )); do
  echo "Incorrect input. Try again"
  read answer
done

while (( $answer != $correct)); do
  while (( !$( is_number $answer ) )); do
    echo "Incorrect input. Try again"
    read answer
  done

  if (( $answer != $correct )); then
    status="low"
    if (( $answer > $correct )); then
      status="high"
    fi
    echo "Too $status. Try again"
    read answer
  fi
done
echo "Congratulations!"
