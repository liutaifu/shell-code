#!/bin/bash


function usage(){
		echo "This script search dir and print\n"
}

function getdir() {
		usage
		local cur_dir parent_dir workdir
		workdir=$1
		cd $workdir
		if [ $workdir = "/" ];then
				cur_dir=""
		else
				cur_dir=$(pwd)
		fi
		for dir_or_file in $(ls $cur_dir)
				do
#						dir_or_file=$element;
#						echo $dir_or_file;
						if [ -d  $dir_or_file ]; then
								echo $dir_or_file;
								echo "dir";
								cd $dir_or_file;
								getdir $cur_dir"/"$dir_or_file;
								cd ..
						elif [ -f $dir_or_file ]; then
								echo "file";
								echo $dir_or_file;
								sed -i "s/ov5670_a3/s5k5e8_sa50/g" $dir_or_file;
								sed -i "s/ov5670/s5k5e8_sa50/g" $dir_or_file;
								sed -i "s/OV5670/S5K5E8_SA50/g" $dir_or_file;

#								if [ $dir_or_file = "*ov5670*" ];then
#										echo "find";
#								else
#										echo "no find"
#								fi
						else
								echo "other";
								echo $dir_or_file;
						fi
				done
}
#dir=$1
#echo $1
getdir $1
echo "end"
