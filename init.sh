#!/bin/bash
echo '
## Part Deploy working
##
## @author      Villalba Juan Manuel Pedro <https://github.com/juanma386>
# @Version:     0.0.1
# @Estado:      Alpha
# @Destino:     Deploy Server Php Linux
# @Date:        05:41pm 14-09-2017
# @Advertencia  Usar con cautela y bajo propia responsabilidad
# @Licence:     GPLv2 Free Software Foundation <licensing@fsf.org>
';

_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)

file=./bin/server.sh
if [ ! -e "$file" ]; then
    echo "File does not exist"
    git clone https://github.com/juanma386/localdeploy/ && mv local*/* . && rm -r localdeploy
    echo "Deploy and inicializated Deploy".		"[".$_hoy."]"
    echo "preparing deployer to inicializated ".	" [ ".$_hoy." ]" > testing.server.log 
    bash bin/server.sh
else
    echo "Data Deploy is existed".	" [ ".$_hoy." ]"
    echo "Data deploy is existed  OK ".	" [ "$_hoy" ]" >> testing.server.log
    echo "Directorio de ejecución OK ".	" [ "$_pwd" ]" >> testing.server.log
    echo "Directorio de ejecución OK ".	" [ "$_pwd" ]"
    bash bin/server.sh
fi


