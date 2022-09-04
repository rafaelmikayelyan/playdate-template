if [ ! -d build/ ]
then
mkdir build/ && echo "-> created build/"
fi

name=$(awk '/name/' source/pdxinfo)
version=$(awk '/version/' source/pdxinfo)
filename=${name#*=}-${version#*=}.pdx

pdc source build/${name}.pdx && open build/${name}.pdx
