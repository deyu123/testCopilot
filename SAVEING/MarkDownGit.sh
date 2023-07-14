#!/bin/bash

target_day=`date "+%Y-%m-%d %H:%M:%S"`
markdown_dir=/Users/zhangdeyu/workspace/home/mark-down

if [ $# -eq 2 ]; then
  action=$1
  commit_m=$2
else
	echo "USAGE : [pull or push or commit] | [commit desc] "
	exit -1
fi:

echo "$action $commit_m"
cd $markdown_dir

if [ $action = "push" ]; then
  git add $markdown_dir/*
  git commit -m "$target_day $commit_m"
  git push origin master
elif [ $action = "pull" ]; then
  git add $markdown_dir/*
  git commit -m "$target_day $commit_m"
  git pull
elif [ $action = "commit" ]; then
  git commit -m "$target_day $commit_m"
fi

if [[ "$?" -ne "0" ]]; then
    exit 2
fi

echo "$target_day success !!!"
echo "======================="