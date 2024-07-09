#!/bin/bash
############################################################################## PYTHON VERSION VERY IMPORTANT
python_version=3.12
echo Python $python_version
#########################################################
# Get the user directory
userdir="$HOME"
#########################################################
dir_path=$userdir/scripts/OctoPrint
cd $dir_path
folder=$(basename $(pwd))
name="$folder-py$python_version-env"
if [ -d "$userdir/envs/$name" ]; then
echo "$userdir/envs/$name folder exists"
else
echo "Creating envs"
python$python_version -m venv "$userdir/envs/$name"
fi
source "$userdir/envs/$name/bin/activate"
python -m pip install --upgrade pip
deactivate