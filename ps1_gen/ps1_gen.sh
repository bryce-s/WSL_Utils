# generates a .bat and .ps1 pair, with the
# .bat giving execute permissions to the .ps1
function genps1() {
 set -e
 set -x
 if [ "$#" -eq 1 ]; then 
  echo please provice name for ps1 bat pair
 fi 
 name=$1
 echo generating $1
 echo PowerShell -NoProfile -ExecutionPolicy Bypass -file \"$name\" >> $name.bat
 echo \#require admin >> $name.ps1
}

