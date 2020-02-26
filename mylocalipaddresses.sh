#!/bin/sh
ip -f inet -o addr  | cut -d\  -f 7 | cut -d/ -f 1 
