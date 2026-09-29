#!/usr/bin/env bash

selected=$(zoxide query -i)

echo "selected: '$selected'"
if [[ -z $selected ]]; then
  exit 0
fi 


selected_name=$(basename "$selected" | tr . _)

herdr workspace create --cwd "$selected" --label "$selected_name" --focus

