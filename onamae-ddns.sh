#!/bin/bash
source account.sh
source ipv4.sh

if [ -z "$ONAMAE_USERID" ]; then
	echo ONAMAE_USERID should be set.
	exit 1
fi

if [ -z "$ONAMAE_PASSWORD" ]; then
	echo ONAMAE_PASSWORD should be set.
	exit 1
fi

if [ -z "$ONAMAE_ANAME" ]; then
	echo ONAMAE_ANAME should be set.
	exit 1
fi

if [ -z "$ONAMAE_DOMAIN" ]; then
	echo ONAMAE_DOMAIN should be set.
	exit 1
fi

if [ -z "$ONAMAE_IPV4" ]; then
	echo ONAMAE_IPV4 should be set.
	exit 1
fi

TMUXSESS=onamae
tmux kill-session -t ${TMUXSESS}
tmux new-session -d -s ${TMUXSESS}
sleep 1
tmux send-keys -t ${TMUXSESS} "openssl s_client -connect ddnsclient.onamae.com:65010" C-m
sleep 1
tmux send-keys -t ${TMUXSESS} LOGIN C-m
tmux send-keys -t ${TMUXSESS} USERID:${ONAMAE_USERID} C-m
tmux send-keys -t ${TMUXSESS} PASSWORD:${ONAMAE_PASSWORD} C-m
tmux send-keys -t onamae . C-m
sleep 1
tmux send-keys -t ${TMUXSESS} MODIP C-m
tmux send-keys -t ${TMUXSESS} HOSTNAME:${ONAMAE_ANAME} C-m
tmux send-keys -t ${TMUXSESS} DOMNAME:${ONAMAE_DOMAIN} C-m
tmux send-keys -t ${TMUXSESS} IPV4:${ONAMAE_IPV4} C-m
tmux send-keys -t ${TMUXSESS} . C-m
sleep 1
tmux send-keys -t ${TMUXSESS} LOGOUT C-m
sleep 1
tmux send-keys -t ${TMUXSESS} QUIT C-m

