#!/usr/bin/env bash
TASKDDATA=/var/taskd
firstLast=noah_huppert

# Sync
scp "root@taskd.noahh.io:$TASKDDATA/{$firstLast.cert.pem,$firstLast.key.pem,ca.cert.pem}" ~/.task

# Config
task config taskd.certificate -- "~/.task/$firstLast.cert.pem"
task config taskd.key         -- "~/.task/$firstLast.key.pem"
task config taskd.ca          -- "~/.task/ca.cert.pem"
