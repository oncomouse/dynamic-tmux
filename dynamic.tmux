#!/usr/bin/env bash

# DWM Tmux Configuration:
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

setenv -g killlast 0 # Toggle killing last pane
setenv -g mfact 50   # Main pane area factor
set -g command-alias[100] newpane='run-shell "$CURRENT_DIR/manage.bash newpane"'
set -g command-alias[101] newpanecurdir='run-shell "$CURRENT_DIR/manage.bash newpanecurdir"'
set -g command-alias[102] killpane='run-shell "$CURRENT_DIR/manage.bash killpane"'
set -g command-alias[103] nextpane='run-shell "$CURRENT_DIR/manage.bash nextpane"'
set -g command-alias[104] prevpane='run-shell "$CURRENT_DIR/manage.bash prevpane"'
set -g command-alias[105] rotateccw='run-shell "$CURRENT_DIR/manage.bash rotateccw"'
set -g command-alias[106] rotatecw='run-shell "$CURRENT_DIR/manage.bash rotatecw"'
set -g command-alias[107] zoom='run-shell "$CURRENT_DIR/manage.bash zoom"'
set -g command-alias[108] layouttile='run-shell "$CURRENT_DIR/manage.bash layouttile"'
set -g command-alias[109] float='run-shell "$CURRENT_DIR/manage.bash float"'
set -g command-alias[110] incmfact='run-shell "$CURRENT_DIR/manage.bash incmfact"'
set -g command-alias[111] decmfact='run-shell "$CURRENT_DIR/manage.bash decmfact"'
set-option -g pane-exited { run-shell "$CURRENT_DIR/manage.bash layouttile" }

# vim:ft=tmux
