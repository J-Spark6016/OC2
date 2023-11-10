#!/bin/bash

echo "Is Linux fun? (Type 'yes' or 'no'): "
read answer

case "$answer" in
  "yes")
    echo "Great to hear that you find Linux fun!"
    ;;
  "no")
    echo "Oh no! What can we do to make it more enjoyable for you?"
    ;;
  *)
    echo "Invalid input. Please enter 'yes' or 'no'."
    ;;
esac
