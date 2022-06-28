if [ ! -d build/ ]
then
mkdir build/ && echo "-> created build/"
fi

local readline=$(head -n 1 source/pdxinfo)
local name=${readline#*=}

pdc source build/${name}.pdx && open build/${name}.pdx
