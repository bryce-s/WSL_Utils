# returns the CWD in windows format
sed 's/\//\\/g' <(pwd) | sed 's/\\mnt\\c\\/C\:\\/g'
