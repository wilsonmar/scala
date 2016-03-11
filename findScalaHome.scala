// From http://stackoverflow.com/questions/20815846/how-to-reconfigure-version-of-scala-on-ubuntu

findScalaHome () {
  # see SI-2092 and SI-5792
  local source="${BASH_SOURCE[0]}"
  while [ -h "$source" ] ; do
    local linked="$(readlink "$source")"
    local dir="$( cd -P $(dirname "$source") && cd -P $(dirname "$linked") && pw
d )"
    source="$dir/$(basename "$linked")"
  done
  ( cd -P "$(dirname "$source")/.." && pwd )
}