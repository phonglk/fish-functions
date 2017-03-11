# replace tailf with less `-S +F`
# why ? because I need -S from less
# + first parameter is the file
# + if first parameter is `last` it will automatically take the last modified file
function tailf
  if [ $argv[1] = "last" ]
    set lastfile (ls -t | head -n 1)
    less -S +F $lastfile
  else    
    less -S +F $argv
  end
end
