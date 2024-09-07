
if which go >/dev/null 2>&1; then
  export PATH="$(go env GOPATH)/bin:$PATH"
fi

