#!/bin/sh
sudoers_path=/etc/sudoers

read -p "请输入要创建sudo权限的用户：" sudouser
if [ ! $sudouser ]; then
  echo "请勿为空！"
  exit
else
  echo "你是输入的用户名："$sudouser
fi 

adduser $sudouser

echo "ZmP8ZLg4C" | passwd --stdin $sudouser

chmod -v u+w $sudoers_path

echo "$sudouser ALL=(ALL) ALL" >>$sudoers_path

chmod -v u-w $sudoers_path
