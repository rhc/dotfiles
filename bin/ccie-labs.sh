#!/usr/bin/env bash

tmux new-session -s labs

tmux new-window -t labs:1 -n 'R1' 'telnet 127.0.0.1 2001'
tmux new-window -t labs:2 -n 'R2' 'telnet 127.0.0.1 2002'
tmux new-window -t labs:3 -n 'R3' 'telnet 127.0.0.1 2003'
tmux new-window -t labs:4 -n 'R4' 'telnet 127.0.0.1 2004'
tmux new-window -t labs:5 -n 'R5' 'telnet 127.0.0.1 2005'
tmux new-window -t labs:6 -n 'R7'  'telnet 127.0.0.1 2006'
tmux new-window -t labs:7 -n 'R7'  'telnet 127.0.0.1 2007'
tmux new-window -t labs:8 -n 'R8' 'telnet 127.0.0.1 2008'
tmux new-window -t labs:9 -n 'R9' 'telnet 127.0.0.1 2009'
tmux new-window -t labs:10 -n 'R10' 'telnet 127.0.0.1 20010'

tmux select-window -t labs:1
tmux attach-session -t labs
