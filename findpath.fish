# findpath of current directory
function findpath
    set list (find . -type d -not -path "*node_modules*")
    set count (printf '%s\n' $list | wc -l)
    echo "Searching for $count files"
    printf '%s\n' $list | grep $argv[1]
end
