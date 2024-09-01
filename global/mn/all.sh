#!/bin/sh

if [[ "$HOST" == "hades" ]]; then
  $SYSMAG/global/mn/fatty.sh
fi

if [[ "$HOST" == "astar" ]]; then
  $SYSMAG/global/mn/fatty.sh
fi
