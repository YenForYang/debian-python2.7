#!/bin/sh

exit_with_usage ()
{
    echo "Usage: $0 --prefix|--exec-prefix|--includes|--libs|--cflags|--ldflags|--extension-suffix|--help|--configdir"
    exit $1
}

if [ "$1" = "" ] ; then
    exit_with_usage 1
fi

# Returns the actual prefix where this script was installed to.
installed_prefix ()
{
    local RESULT=$(dirname $(cd $(dirname "$1") && pwd -P))
    if [ $(which readlink) ] ; then
        RESULT=$(readlink -f "$RESULT")
    fi
    echo $RESULT
}

prefix_build="/usr"
prefix_real=$(installed_prefix "$0")

# Use sed to fix paths from their built to locations to their installed to locations.
prefix=$(echo "$prefix_build" | sed "s#$prefix_build#$prefix_real#")
exec_prefix_build="${prefix}"
exec_prefix=$(echo "$exec_prefix_build" | sed "s#$exec_prefix_build#$prefix_real#")
includedir=$(echo "${prefix}/include" | sed "s#$prefix_build#$prefix_real#")
libdir=$(echo "${exec_prefix}/lib" | sed "s#$prefix_build#$prefix_real#")
CFLAGS=$(echo "-Wdate-time -g -O0 -fdebug-prefix-map=/dev/shm/python27/python2.7-2.7.15=. -Wformat -march=native -pipe -Wformat-security" | sed "s#$prefix_build#$prefix_real#")
VERSION="2.7"
LIBM="-lm"
LIBC=""
SYSLIBS="$LIBM $LIBC"
ABIFLAGS="_d"
MULTIARCH=""
LIBS="-lpython${VERSION}${ABIFLAGS} -ldl  -lutil $SYSLIBS"
BASECFLAGS=" -fno-strict-aliasing -fp-model strict -OPT:Olimit=0"
LDLIBRARY="libpython$(VERSION)$(DEBUG_EXT).so"
LINKFORSHARED="-Xlinker -export-dynamic -Wl,-O1 -Wl,-Bsymbolic-functions"
OPT="-g -O0 -Wall -Wstrict-prototypes"
PY_ENABLE_SHARED="1"
LIBDEST=${prefix}/lib/python${VERSION}
LIBPL=${LIBDEST}/config-${MULTIARCH}${ABIFLAGS}
SO="${ABIFLAGS}.so"
PYTHONFRAMEWORK=""
INCDIR="-I$includedir/python${VERSION}${ABIFLAGS}"
PLATINCDIR="-I$includedir/$MULTIARCH/python${VERSION}${ABIFLAGS}"

# Scan for --help or unknown argument.
for ARG in $*
do
    case $ARG in
        --help)
            exit_with_usage 0
        ;;
        --prefix|--exec-prefix|--includes|--libs|--cflags|--ldflags|--extension-suffix|--configdir)
        ;;
        *)
            exit_with_usage 1
        ;;
    esac
done

for ARG in $*
do
    case $ARG in
        --prefix)
            echo "$prefix"
        ;;
        --exec-prefix)
            echo "$exec_prefix"
        ;;
        --includes)
            echo "$INCDIR" "$PLATINCDIR"
        ;;
        --cflags)
            echo "$INCDIR $PLATINCDIR $BASECFLAGS $CFLAGS $OPT"
        ;;
        --libs)
            echo "$LIBS"
        ;;
        --ldflags)
            LINKFORSHAREDUSED=
            if [ -z "$PYTHONFRAMEWORK" ] ; then
                LINKFORSHAREDUSED=$LINKFORSHARED
            fi
            LIBPLUSED=
            if [ "$PY_ENABLE_SHARED" = "0" ] ; then
                LIBPLUSED="-L$LIBPL"
            fi
            echo "$LIBPLUSED -L$libdir $LIBS $LINKFORSHAREDUSED"
        ;;
        --extension-suffix)
            echo "$SO"
        ;;
        --configdir)
            echo "$LIBPL"
        ;;
esac
done
