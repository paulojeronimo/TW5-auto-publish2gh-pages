#!/usr/bin/env bash
set +x

BASE_DIR=`cd "$(dirname "$0")"; pwd`
cd "$BASE_DIR"

build() {
  tiddlywiki wiki --rendertiddlers [!is[system]] $:/core/templates/static.tiddler.html static text/plain
}

clean() {
  rm -rf wiki/output
}

serve() {
  local d=wiki/output/static
  [ -d $d ] && http-server $d || echo "Directory \"$d\" does not exists!"
}

[ "$1" ] && {
  type "$1" > /dev/null && $1
} || echo "$0 <build|clean|serve>"
