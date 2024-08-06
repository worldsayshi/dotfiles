#!/usr/bin/env bash

# Adapted from https://github.com/ThePrimeagen/.dotfiles

script_dirpath=$(dirname $(readlink -f $0))

to_select_from=''
# Check if files are in script_dirpath
if [[ -f $script_dirpath/.tmux-cht-command ]]; then
  to_select_from=$"to_select_from"' '$(cat $script_dirpath/.tmux-cht-command)
fi

if [[ -f $script_dirpath/.tmux-cht-languages ]]; then
  to_select_from="$to_select_from"' '$(cat $script_dirpath/.tmux-cht-languages)
fi

selected=$(echo "$to_select_from" | fzf)
if [[ -z $selected ]]; then
  exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.tmux-cht-languages; then
  query=$(echo $query | tr ' ' '+')
  tmux neww bash -c "echo \"curl -s cht.sh/$selected/$query/\" & curl -s cht.sh/$selected/$query | less -R"
else
  tmux neww bash -c "curl -s cht.sh/$selected~$query | less -R"
fi
