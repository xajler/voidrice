#!/bin/sh
sysctl dev.cpu.3.temperature | awk '{ print substr($0, 23, 3)  }'  | sed -e 's/^[[:space:]]*//' | awk '{ print $1"°C" }'
