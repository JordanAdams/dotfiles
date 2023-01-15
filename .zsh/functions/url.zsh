function urlencode() {
  ruby -e "require 'uri'" -e "puts URI::encode('$1')"
}

function urldecode() {
  ruby -e "require 'uri'" -e "puts URI::decode('$1')"
}
