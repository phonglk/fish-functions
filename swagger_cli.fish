function swagger_cli
    set host $argv
    curl -s "http://$host/api/spec" |  grep "\"path\":" | cut -d"\"" -f4 | sed "s/.*/$host&/"
end
