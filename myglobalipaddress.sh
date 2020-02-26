#!/bin/sh
curl -s checkip.dyndns.org | grep -oE "[0-9.]+"      
