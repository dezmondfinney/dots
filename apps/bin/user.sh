#!/bin/bash
name=$(id -un)

if [ $name = "u0_a286" ]; then
	echo "Tab S7+"
elif [ $name = "u0_a368"]; then
	echo "Z Fold 3"
else
	echo $name
fi
