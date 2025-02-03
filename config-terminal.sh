#!/bin/bash


PS3=$'\n'" * Elige una opcion: "


select opcion in "añadir config de p10k (solo si tienes la fuente MesloLG)" "instalar kitty" "config kitty" "Salir"; do
	case $REPLY in

######################################################

		1)
			cat rc-files/p10k.txt > ~/.p10k.zsh 
			#source ~/.zshrc
			tput setaf 2; echo " ** archivo de configuracion de p10k cambiado."; tput sgr0
		;;

######################################################

		2)
			curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
			tput setaf 2; echo " ** kitty instalado."; tput sgr0
			tput setaf 3; echo " ** para hacer que kitty sea tu terminal por defecto cambia el atajo del teclado."; tput sgr0
		;;

######################################################

		3)
			cat rc-files/kitty.txt > ~/.config/kitty/kitty.conf
		;;

######################################################

		4) tput setaf 1; echo "Saliendo..."; tput sgr0; break;;
		*) tput setaf 1; echo "Opción inválida. Intenta de nuevo."; tput sgr0;;
	esac
done


exit 0
