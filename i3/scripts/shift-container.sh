export WSNEXTNUM=$(( $( i3-msg -t get_workspaces | jq '.[] | select(.focused).num' ) + $1))
export WSNEXTNAME="$(i3-msg -t get_workspaces | jq --arg WSNEXTNUM "$WSNEXTNUM" '.[] | select(.num=='$WSNEXTNUM').name')"
echo $WSNEXTNAME
i3-msg workspace number $WSNEXTNAME