#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files are in the current directory? please Enter your guess!"

function guess {
  read result
  echo $result
}

stop=0
res=$(guess)
while [[ $stop -eq 0 ]]
do
  if [[ $res -eq 3 ]]
  then
    echo "Congrats, you guessed right!"
    let stop=1
  elif [[ $res -lt 3 ]]
  then
    echo "You guessed too low, please guess again."
    let res=$(guess)
  else
    echo "You guessed too high, please guess again."
    let res=$(guess)
  fi
done
