#!/bin/bash
set -e
uid=$(stat -c%u /code)
gid=$(stat -c%g /code)
groupadd -g $gid deploy
useradd -u $uid -g $gid deploy
exec ./gosu deploy bash -c "${*:1}"
