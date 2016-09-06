function hg_suggest_rebase
    hg pull
    set tip (hg tip | grep changeset | cut -d":" -f3)
    set my (hg outgoing | grep changeset | head -n 1 | cut -d":" -f3)
    hg log -l 50 -G | grep --color -e $tip -e $my -A5
    echo -e "\e[32m -s \e[1m $my \e[0m\e[32m -d \e[1m $tip \e[0m"
    set -g -x REBASE "-s $my -d $tip"
end
