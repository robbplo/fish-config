function ddb
  mysql -u root -e "drop database $argv"
end
