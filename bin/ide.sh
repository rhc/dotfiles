#!/usr/bin/env bash

terminator -e "vim Gemfile" &
terminator -e "bundle exec guard" &
terminator -e "rails server" &

