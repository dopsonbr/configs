#!/bin/bash

OPTIONS_TEXT="-a setup apps, -f setup font, -n setup nvim config, z setup ohmyzsh"
USAGE_TEXT="Usage:$0 [-afnz]"
display_help() { 
  echo "$USAGE_TEXT"
  echo "$OPTIONS_TEXT"
  exit 1
}

while getopts ":atfnzh" opt; do
  case ${opt} in
	h)
	  display_help
	  ;;
	t)
	  source test_setup.sh
	  ;;
	a) 
	  source apps_setup.sh
	  ;;
	n)
	  source neovim_setup.sh
	  ;;
	f)
	  source font_setup.sh
	  ;;
	z)
	  source zsh_setup.sh
	  ;;
	\?)
	  echo "Invalid option: -$OPTARG" >&2
	  ;;
	esac
done

