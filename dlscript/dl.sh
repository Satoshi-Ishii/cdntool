#!/bin/sh

function usage {
    cat <<EOF
$(basename ${0}) is a tool to spider download of specific url

Usage:
    $(basename ${0}) [URL] [Num of Download] (--nospider)

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


a=0
spider="--spider"

if [ $3 = "--nospider" ]; then
	spider=""
fi

while [ $a -ne $2 ]
do
	a=`expr $a + 1`
	echo "Try ${a}"
	wget -S $spider $1 2>&1
done
