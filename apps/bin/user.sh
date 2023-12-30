#!/bin/bash
name=$(id -un)

if [ $name = "u0_a286" ]; then
	echo "Tab S7+"
else
	echo $(hostname)
fi
