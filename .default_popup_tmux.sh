width=${2:-95%}
height=${2:-95%}

if [ "$(tmux display-message -p -F "#{session_name}")" = "popup" ];then
    tmux detach-client
else
    tmux popup -d '#{pane_current_path}' -xC -yC -w$width -h$height "tmux attach -t popup || tmux new -s popup"
fi
exit 0
