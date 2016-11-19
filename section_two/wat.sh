#!/bin/bash

for FO in $@
do
	file ${FO}
	if [ -d "${FO}" ]
	then
		ls -l ${FO}
	fi
done
