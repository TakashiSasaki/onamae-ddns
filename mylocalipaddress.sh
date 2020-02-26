#!/bin/sh
ip -f inet -o addr  | cut -d\  -f 7 | cut -d/ -f 1 | grep -v "127.0.0.1" | head -1
