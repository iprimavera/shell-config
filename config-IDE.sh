#!/bin/bash


PS3=$'\n'" * Elige una opcion: "


select opcion in "install Plug de vim" "config vim" "install nvim" "Salir"; do
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

		3)
			curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
      rm -rf /opt/nvim
      tar -C /opt -xzf nvim-linux-x86_64.tar.gz
      echo "export PATH=\"\$PATH:/opt/nvim-linux-x86_64/bin\"" >> ~/.zshrc
      git clone https://github.com/NvChad/starter ~/.config/nvim
			tput setaf 2; echo " ** Neovim installed succesfully."; tput sgr0
		;;

		#4)
		#	cat rc-files/nvim/init.txt > ~/.config/nvim/init.lua
#			cat rc-files/nvim/lazy.txt > ~/.config/nvim/lua/lazy-cfg.lua
		#	tput setaf 2; echo " ** Neovim configured succesfully."; tput sgr0
		#;;

######################################################

		4) tput setaf 1; echo "Saliendo..."; tput sgr0; break;;
		*) tput setaf 1; echo "Opción inválida. Intenta de nuevo."; tput sgr0;;
  esac

done

exit 0
