#!/usr/bin/env bash

# DWM Tmux Configuration:
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux setenv -g killlast 0 # Toggle killing last pane
tmux setenv -g mfact 50   # Main pane area factor
tmux set -g command-alias[100] newpane='run-shell "$CURRENT_DIR/manage.bash newpane"'
tmux set -g command-alias[101] newpanecurdir='run-shell "$CURRENT_DIR/manage.bash newpanecurdir"'
tmux set -g command-alias[102] killpane='run-shell "$CURRENT_DIR/manage.bash killpane"'
tmux set -g command-alias[103] nextpane='run-shell "$CURRENT_DIR/manage.bash nextpane"'
tmux set -g command-alias[104] prevpane='run-shell "$CURRENT_DIR/manage.bash prevpane"'
tmux set -g command-alias[105] rotateccw='run-shell "$CURRENT_DIR/manage.bash rotateccw"'
tmux set -g command-alias[106] rotatecw='run-shell "$CURRENT_DIR/manage.bash rotatecw"'
tmux set -g command-alias[107] zoom='run-shell "$CURRENT_DIR/manage.bash zoom"'
tmux set -g command-alias[108] layouttile='run-shell "$CURRENT_DIR/manage.bash layouttile"'
tmux set -g command-alias[109] float='run-shell "$CURRENT_DIR/manage.bash float"'
tmux set -g command-alias[110] incmfact='run-shell "$CURRENT_DIR/manage.bash incmfact"'
tmux set -g command-alias[111] decmfact='run-shell "$CURRENT_DIR/manage.bash decmfact"'
tmux set-option -g pane-exited { run-shell "$CURRENT_DIR/manage.bash layouttile" }

# vim:ft=tmux
