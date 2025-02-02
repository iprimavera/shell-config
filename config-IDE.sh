#!/bin/bash


PS3=$'\n'" * Elige una opcion: "


select opcion in "install Plug de vim" "config vim" "Salir"; do
   	case $REPLY in

####################################################

		1) 
			curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		;;

		2)
			cat rc-files/vim.txt > ~/.vimrc

			tput setaf 2; echo " ** vimrc changed succesfully."; tput sgr0
			tput setaf 3; echo """
	** si tenias algun plug instalado, abre vim y escribe ':PlugClean'
	para instalar los nuevos Plugins, abre vim y escribe ':PlugInstall'
			"""; tput sgr0
		;;

######################################################

		3) tput setaf 1; echo "Saliendo..."; tput sgr0; break;;
		*) tput setaf 1; echo "Opción inválida. Intenta de nuevo."; tput sgr0;;
   	esac
done

exit 0
