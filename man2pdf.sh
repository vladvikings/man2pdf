#!/bin/bash
man -t $1 > ${1}.ps
gs -q -dSAFER -dNOPAUSE -dBATCH -sOutputFile=${1}.pdf -sDEVICE=pdfwrite -c .setpdfwrite "-c <</Orientation 3>> setpagedevice" -f ${1}.ps
