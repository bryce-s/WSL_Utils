# returns the CWD in windows format
function winpath() {
  if [ "$#" -ne 1 ]; then
    echo $1 | sed 's/\//\\/g'
  else
    sed 's/\//\\/g' <(pwd) | sed 's/\\mnt\\c\\/C\:\\/g'
  fi
}


