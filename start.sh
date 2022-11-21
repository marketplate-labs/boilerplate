#!/usr/bin/env bash

FILE=$(pwd)/.env

_show_welcome_() {
  echo -ne "                                                                      

    ███╗   ███╗ █████╗ ██████╗ ██╗  ██╗███████╗████████╗██████╗ ██╗      █████╗ ████████╗███████╗
    ████╗ ████║██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██║     ██╔══██╗╚══██╔══╝██╔════╝
    ██╔████╔██║███████║██████╔╝█████╔╝ █████╗     ██║   ██████╔╝██║     ███████║   ██║   █████╗  
    ██║╚██╔╝██║██╔══██║██╔══██╗██╔═██╗ ██╔══╝     ██║   ██╔═══╝ ██║     ██╔══██║   ██║   ██╔══╝  
    ██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██╗███████╗   ██║   ██║     ███████╗██║  ██║   ██║   ███████╗
    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                                                                                

    Welcome to the Marketplate wizard! This app will walk you through the setup process and start the marketplate


"
}

_show_message_() {
  echo -ne "
    $1

"
}

_launch_docker_compose_() {
  docker-compose --env-file $FILE up
}

mainmenu() {
  _show_welcome_

  if test -f "$FILE"; then
    _show_message_ "Configuration $FILE already exists, skipping configuration..."
  else
    echo -n "Marketplace name (default Marketplate): "
    read -r MARKETPLACE_NAME
    MARKETPLACE_NAME=${MARKETPLACE_NAME:-"Marketplate"}

    echo -n "Type Chain ID (default 5): "
    read -r CHAIN_ID
    CHAIN_ID=${CHAIN_ID:-5}
    
    echo -n "Alchemy key (default TYXOxQE-qhhwe3Sn2ToFhqRl428qXyUI): "
    read -r ALCHEMY_KEY
    ALCHEMY_KEY=${ALCHEMY_KEY:-"TYXOxQE-qhhwe3Sn2ToFhqRl428qXyUI"}
    
    echo -n "Frontend port (default 3000): "
    read -r FRONTEND_PORT
    FRONTEND_PORT=${FRONTEND_PORT:-3000}
    
    echo -n "Whitelisted tokens, space separated (default 0xb4fbf271143f4fbf7b91a5ded31805e42b2208d6): "
    read -r WHITELISTED_TOKENS
    WHITELISTED_TOKENS=${WHITELISTED_TOKENS:-"0xb4fbf271143f4fbf7b91a5ded31805e42b2208d6"}

    echo -ne "MARKETPLACE_NAME=${MARKETPLACE_NAME}
CHAIN_ID=${CHAIN_ID}
ALCHEMY_KEY=${ALCHEMY_KEY}
FRONTEND_PORT=${FRONTEND_PORT}
WHITELISTED_TOKENS=${WHITELISTED_TOKENS}
" >> $FILE

  fi

  _launch_docker_compose_
}

mainmenu
