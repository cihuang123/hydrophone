

#!/usr/bin/env bash
#
# Typical usage: ./join.bash subt
#

IMG=coolcat647/robotx-underwater:laptop 

xhost +
containerid=$(docker ps -aqf "ancestor=${IMG}")&& echo $containerid
docker exec --privileged -e DISPLAY=${DISPLAY} -e LINES="$(tput lines)" -it ${containerid} bash
xhost -
