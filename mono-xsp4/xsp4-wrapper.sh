#!/bin/bash

set -e

usage() {
	base="$(basename "$0")"
	cat <<EOF

usage: $base command [args]

Available commands:

	$base run
	$base run -xsp4 -specific -arguments
EOF
}

cmd="$1"

if ! shift; then
	usage >&2
	exit 1
fi

case "$cmd" in
	run)
		set -x; exec xsp4 "$@"
		;;
	*)
		echo >&2 'Error: unknown command:' "$cmd"
		usage >&2
		exit 1
		;;
esac

