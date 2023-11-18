#!/bin/bash
# Initializes a new JavaScript/TypeScript project

red='\033[0;31m'
green='\033[0;32m'
cyan='\033[0;36m'
clear='\033[0m'

create_project() {
    echo -e "${cyan}Ensure that a stable node version is installed.${clear}"
    echo -e "${red}Existing${clear} node_modules directory or package.json, tsconfig.json files ${red}will be removed.${clear}"
    # remove existing package.json or tsconfig,json, if any
    if [[ -f 'package.json' ]]; then
        rm package.json
    fi
    if [[ -f 'tsconfig.json' ]]; then
        rem tsconfig.json
    fi

    if [[ -d 'node_modules' ]]; then
        rm -r node_modules
        rm package-lock.json
    fi
    # initialize package
    echo -e "${cyan}Initializing JavaScript package...${clear}"
    npm init -y >>/dev/null

    # check TypeScript addition
    echo -e "${cyan}Add TypeScript?${clear} N|n OR Y|y"
    read -r response
    if [[ "$response" =~ ^[yY]$ ]]; then
        echo -e "${cyan}Installing TypeScript...${clear}"
        npm install --save-dev typescript ts-node >>/dev/null
        npx tsc --init -y
    fi

    echo -e "${green}Project initialized${clear}"
}

create_project
