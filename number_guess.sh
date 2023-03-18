#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# get username
echo "Enter your username:"
read USERNAME
PLAYER_ID=$($PSQL "SELECT player_id FROM player_details WHERE username = '$USERNAME'")

# if not existing player
if [[ -z $PLAYER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  # insert player's details
  INSERT_USERNAME=$($PSQL "INSERT INTO player_details(username) VALUES('$USERNAME')")
  # get player's ID
  PLAYER_ID=$($PSQL "SELECT player_id FROM player_details WHERE username = '$USERNAME'")
else
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guess) FROM records WHERE player_id = $PLAYER_ID")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(player_id) FROM records WHERE player_id=$PLAYER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# start game

# generate random number
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

# reset number of guess
NUMBER_OF_GUESS=0

echo "Guess the secret number between 1 and 1000:"
read GUESS
NUMBER_OF_GUESS=1
until [[ $GUESS == $SECRET_NUMBER ]]
do
  if ! [[ "$GUESS" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS
    NUMBER_OF_GUESS=$(expr $NUMBER_OF_GUESS + 1)
  else
    if (( $GUESS > $SECRET_NUMBER ))
    then
      echo "It's lower than that, guess again:"
      read GUESS
      NUMBER_OF_GUESS=$(expr $NUMBER_OF_GUESS + 1)
    elif (( $GUESS < $SECRET_NUMBER ))
    then
      echo "It's higher than that, guess again:"
      read GUESS
      NUMBER_OF_GUESS=$(expr $NUMBER_OF_GUESS + 1)
    fi
  fi
done

# update records table
INSERT_GAME_RECORDS=$($PSQL "INSERT INTO records(player_id, number_of_guess) VALUES($PLAYER_ID, $NUMBER_OF_GUESS)")

echo "You guessed it in $NUMBER_OF_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"
