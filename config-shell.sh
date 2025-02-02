#!/bin/bash


PS3=$'\n'" * Elige una opcion: "


select opcion in "instalar oh my zsh" "config zsh" "Salir"; do
	case $REPLY in

#####################################################

		1)
			sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
			git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
			git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
			git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
			tput setaf 2; echo " ** oh my zsh y p10k theme instalados."; tput sgr0
		;;

#####################################################

		2) 
			cat rc-files/zsh.txt > ~/.zshrc
			tput setaf 2; echo " ** archivo de zshrc cambiado."; tput sgr0
		;;

######################################################

		3) tput setaf 1; echo "Saliendo..."; tput sgr0; break;;
		*) tput setaf 1; echo "Opción inválida. Intenta de nuevo."; tput sgr0;;
	esac
done

exit 0
