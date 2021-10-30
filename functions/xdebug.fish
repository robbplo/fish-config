function xdebug
    set iniFileLocation "/usr/local/etc/php/8.0/conf.d/ext-debug.ini";
 
    set currentLine (cat $iniFileLocation | grep xdebug.so)

    if string match -r \#zend_extension $currentLine
        sed -i -e 's/^#zend_extension/zend_extension/g' $iniFileLocation
        echo "xdebug is now active";
    else
        sed -i -e 's/^zend_extension/#zend_extension/g' $iniFileLocation
        echo "xdebug is now inactive";
    end
end
