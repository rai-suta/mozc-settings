#!/bin/sh

cp $1 $1.bak ; ret=$?
if [ $ret = "0" ]; then
    (head -n +1 $1.bak && tail -n +2 $1.bak | sort -k2 -k3 -k1) > $1
else
    echo "faild backup to $1.bak"
fi
