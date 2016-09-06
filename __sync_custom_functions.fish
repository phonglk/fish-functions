set dir (pwd)
set tar ~/.config/fish/functions
echo -e " Current: $dir\n Target: $tar"
for script in *.fish
    echo "Install $script"
    ln -s $dir/$script $tar/$script
end
