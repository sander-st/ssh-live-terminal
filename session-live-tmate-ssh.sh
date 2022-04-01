#!/data/data/com.termux/files/usr/bin/env bash

if ! [ `which tmate` ] && ! [ `which ssh` ] && ! [ `which tmux` ];then
	echo -e "$(clear)\nInstalando paquetes requeridos...\n\n"
	sleep 1
	pkg update && pkg upgrade -y
	pkg install tmux openssh tmate
	echo -e "\n packages instalados...\n"
	sleep 1
fi

if ! [ -a $HOME/.ssh/id_rsa ];then
	echo
	ssh-keygen -t rsa
fi

tmate


