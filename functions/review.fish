function review
  cd ~/projects/bit-academy/review
  set dir (basename $argv .git)

  if test -d $dir
    cd $dir
    git pull --ff-only
  else
    git clone "$argv" 
    cd $dir
  end


  # Kill existing php server process
  set pid (ps aux | grep '[p]hp -S localhost:8000' | awk '{print $2}')
  if test -n $pid
    kill $pid
  end

  ls -lah
  code .
  open http://localhost:8000
  php -S localhost:8000
end

