#!/bin/bash
source account.sh
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
tmux send-keys -t ${TMUXSESS} HOSTNAME:testddns C-m
tmux send-keys -t ${TMUXSESS} DOMNAME:moukaeritai.work C-m
tmux send-keys -t ${TMUXSESS} IPV4:${ONAMAE_IPV4} C-m
tmux send-keys -t ${TMUXSESS} . C-m
sleep 1
tmux send-keys -t ${TMUXSESS} LOGOUT C-m
sleep 1
tmux send-keys -t ${TMUXSESS} QUIT C-m

