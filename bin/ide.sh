#!/usr/bin/env bash

terminator -e "rails server" &
terminator -e "bundle exec guard" &
terminator -e "vim Gemfile" &

