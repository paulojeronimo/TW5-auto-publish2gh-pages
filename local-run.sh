#!/usr/bin/env bash

# If TiddlyWiki isn't installed, exit!
which tiddlywiki &> /dev/null || {
  echo "TiddlyWiki is not installed!"
  exit 1
}

tiddlywiki wiki --listen
