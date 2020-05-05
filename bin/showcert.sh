#!/bin/sh

help() {
    echo "${0} host/ip [port]"
    exit
}

[ $# -ge 1 ] || help

_host=${1}
_port=443
[ $# -ge 2 ] && _port=${2}

echo | openssl s_client -connect  ${_host}:${_port} -showcerts | openssl x509 -fingerprint -noout -sha256
