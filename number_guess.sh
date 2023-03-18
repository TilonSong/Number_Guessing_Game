#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))

echo -e "\nEnter your username:"
read USERNAME

PLAYER_ID=$($PSQL "SELECT player_id FROM player_details WHERE username='$USERNAME'")

if [[ ! -z $PLAYER_ID ]] 
then
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM player_details WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM player_details WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO player_details(username) VALUES('$USERNAME')" | echo 
  GAMES_PLAYED=0
  BEST_GAME=0
fi
echo "Guess the secret number between 1 and 1000:"

TEST() {
  read GUESS
  TRY=$1

  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS = $RANDOM_NUMBER ]]
    then 
      echo "You guessed it in $TRY tries. The secret number was $GUESS. Nice job!"
      $PSQL "UPDATE player_details SET games_played='$(( $GAMES_PLAYED + 1 ))' WHERE username='$USERNAME'" | echo
      if [[ $TRY < $BEST_GAME || $BEST_GAME = 0 ]]
      then
        $PSQL "UPDATE player_details SET best_game='$TRY' WHERE username='$USERNAME'" | echo
      fi
    elif [[ $GUESS > $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      TEST $(( $TRY + 1 ))
    else 
      echo "It's higher than that, guess again:"
      TEST $(( $TRY + 1 ))
    fi
  else
    echo "That is not an integer, guess again:"
    TEST $TRY
  fi
}

TEST 1
