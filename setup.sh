#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml

config_dir=$1

if [ -d "$config_dir" ]
then
	echo "reading config directory contents"
	config_files=$(ls "$config_dir")
else
	echo "config dir not found. Creating one"
	mkdir "$config_dir"
	touch "$config_dir/config.sh"
fi

echo ""
user_group=$2


if [ "$user_group" == "root" ]
then
	echo "configure the server"
elif [ "$user_group" == "admin"  ]
then
	echo "administer the server"
else
	echo "No permission to config server. wrong user group"
fi

echo "using file $file_name to configure something"
echo "here are all configuration file: $config_files"


