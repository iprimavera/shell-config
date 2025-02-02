#!/bin/bash


PS3=$'\n'" * Elige una opcion: "


select opcion in "añadir config de p10k (solo si tienes la fuente MesloLG)" "Salir"; do
	case $REPLY in

######################################################

		1)
			cat p10k.txt > ~/.p10k.zsh 
			#source ~/.zshrc
			tput setaf 2; echo " ** archivo de configuracion de p10k cambiado."; tput sgr0
			break
		;;

######################################################

		2) tput setaf 1; echo "Saliendo..."; tput sgr0; break 2;;
		*) tput setaf 1; echo "Opción inválida. Intenta de nuevo."; tput sgr0;;
	esac
done


exit 0
