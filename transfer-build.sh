local read_line=$(head -n 1 source/pdxinfo)
local name=${read_line#*=}

cp --backup=existing --suffix=.orig build/${name}.pdx ~/Developer/PlaydateSDK/Disk/${name}.pdx
