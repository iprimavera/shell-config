#!/bin/bash


PS3=$'\n'" * Elige una opcion: "

while true; do

	select opcion in "instalar algo" "config vim" "config zsh" "añadir config de p10k (solo si tienes la fuente MesloLG)" "Salir"; do
    	case $REPLY in

#####################################################

			1) 
				select opcion in "instalar oh my zsh" "Salir"; do
					case $REPLY in
						1) 
							sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || echo " *** ya instalado *** "
							git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
							git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
							git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

						;;
						2) break 2;;
					esac
				done
			;;

######################################################

			4)
				cat p10k.txt > ~/.p10k.zsh 
				#source ~/.zshrc
				tput setaf 2; echo " ** archivo de configuracion de p10k cambiado."; tput sgr0
				break
			;;

######################################################

        	5) tput setaf 1; echo "Saliendo..."; tput sgr0; break 2;;
        	*) tput setaf 1; echo "Opción inválida. Intenta de nuevo."; tput sgr0;;
    	esac
	done

done

exit 0
