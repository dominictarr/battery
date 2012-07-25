#!/usr/bin/env bash

state () {
  cat /proc/acpi/battery/BAT0/state
}

info () {
  cat /proc/acpi/battery/BAT0/info
}

life () {
  l=`state | grep 'remaining capacity'`
  echo ${l#remaining capacity:}
}

help () {
  cat ./README.markdown
}

case "$1" in
  state|info|life|help) $1 ;;
  *) life ;;
esac


