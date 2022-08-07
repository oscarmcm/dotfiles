width=${2:-95%}
height=${2:-95%}
program=$1

if [ "$(tmux display-message -p -F "#{session_name}")" = $program ];then
    tmux detach-client
else
    tmux has-session -t $program 2>/dev/null
    if [ $? != 0 ]; then
      cmand="tmux \; new -s $program \; set -t $program status off \; send -t $program $program Enter"
    else
      cmand="tmux \; attach -d -t $program \; set -t $program status off"
    fi
    tmux popup -d '#{pane_current_path}' -xC -yC -w$width -h$height "$cmand"
fi
exit 0
