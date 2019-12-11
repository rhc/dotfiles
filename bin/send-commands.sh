#!/usr/bin/env bash

tmux send -t labs:1 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:2 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:3 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:4 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:5 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:6 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:7 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:8 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:9 'config replace flash:config/basic.ip.addressing.cfg force' C-m
tmux send -t labs:10 'config replace flash:config/basic.ip.addressing.cfg force' C-m

tmux select-window -t labs:1
