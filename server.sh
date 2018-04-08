#!/usr/bin/env bash

# Vars
host=taskd.noahh.io
port=443

# Config
task config taskd.server      -- "$host:$port"
