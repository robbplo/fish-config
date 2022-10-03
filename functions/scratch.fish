function scratch
    set extension $argv
    set filename (random | md5sum | head -c 10)
    set path "/tmp/scratch/$filename.$extension"

    [ -d /tmp/scratch ] || mkdir /tmp/scratch

    if [ "$extension" = php ]
        echo "<?php" >$path
    end

    $EDITOR $path
end
