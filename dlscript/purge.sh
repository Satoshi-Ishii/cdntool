#!/bin/sh

function usage {
    cat <<EOF
$(basename ${0}) is a tool to purge URL

Usage:
    $(basename ${0}) [URL] 

Options:
    --version, -v     print $(basename ${0}) version
    --help, -h        print this
EOF
}

case ${1} in

    help|--help|-h)
        usage
	exit 0
    ;;

    version|--version|-v)
##        version
	exit 0
    ;;
esac

curl -X PURGE $1
