#!/usr/bin/env zsh

#autoload
function genDate() {
  local day_month=$1
  local current_time=$(date +'%T')
  local time_zone=$(date +'%z')
  local year=$(date +'%Y')
  if [ -n "$2" ]; then
    year="$2"
  fi
  echo "$(date -d"$day_month" +%b-%a-%d | tr "-" " ") $current_time $year $time_zone"
}
