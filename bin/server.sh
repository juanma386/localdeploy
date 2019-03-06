#!/bin/sh
echo '
## Part Deploy working
##
## @author      Villalba Juan Manuel Pedro <https://github.com/juanma386>

# @Version:     0.0.2
# @Estado:      Alpha
# @Destino:     Deploy Server Php Linux
# @Date:        05:41pm 14-09-2017
# @Advertencia  Usar con cautela y bajo propia responsabilidad
# @Licence:     GPLv2 Free Software Foundation <licensing@fsf.org>
';
cd `dirname $0`/..
_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)

file=./testing.server.log
if [ ! -e "$file" ]; then
    echo "File does not exist"
    echo "Create File inicializated Deploy"." [ "$_hoy" ]"
    echo "Create File inicializated Deploy".	" [ "$_hoy" ]" > testing.server.log
else
    echo "Checking file is exist deployed again"." [ "$_hoy" ]"
    echo "Deployed again executed OK "."  [ "$_hoy" ]" >> testing.server.log
fi

ADDR_PORT=${1:-127.0.0.1:8000}
DOC_ROOT="$_pwd"

php5.6 -S "$ADDR_PORT" -t "$DOC_ROOT/" -f bin/route.php
