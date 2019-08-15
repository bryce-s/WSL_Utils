set -ve

function open() {
  explorer.exe `wslpath -w "$1"`
}
