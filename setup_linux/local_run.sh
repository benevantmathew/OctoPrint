#!/bin/bash
############################################################################## PYTHON VERSION VERY IMPORTANT
python_version=3.12
echo Python $python_version
#########################################################
# Variables
# Get the user directory
userdir="$HOME"
dir_path=$userdir/scripts/OctoPrint
current_directory=$(pwd)
#########################################################
cd $dir_path
folder=$(basename $(pwd))
name="$folder-py$python_version-env"
if [ -d "$userdir/envs/$name" ]; then
echo "Enabling venv"
envpath="$userdir/envs/$name/bin/activate"
. $envpath
else
echo "No venv. Run local_setup.sh first."
exit 1
fi
cd $current_directory