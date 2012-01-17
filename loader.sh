#!/bin/bash
i=1
URL='http://proton.module.ru/index.php?option=com_phocagallery&view=category&id=8:ny2012&Itemid=3'
wget -O - $URL  |./html-parser | grep 'TITLE=Image Download'| cut -d"=" -f3-|while read line; do
wget http://proton/$line -O $i.jpg
i=$((i+1))
done
