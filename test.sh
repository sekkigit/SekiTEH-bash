#!/usr/bin/env bash

### Colors ##
ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }

### Installer Functions #######################################

# Basic install
fn_basic() { echo; 
while true; do
        read -p "Do you wish run Basic installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash basic-install ; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Simple install
fn_simple() { echo; 
while true; do
        read -p "Do you wish run Simple installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash simple-install; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Full install
fn_full() { echo; 
while true; do
        read -p "Do you wish run Full installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash full-install; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

### Program Function #######################################

# Crontask autotask
fn_autorun() { echo; 
while true; do
        read -p "Do you wish run Crontask installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash ./autorun/crontask.sh; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Backup autotask
fn_backup() { echo; 
while true; do
        read -p "Do you wish run Backup installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash ./backup/create_backup.sh; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Basic software
fn_basicapp() { echo; 
while true; do
        read -p "Do you wish run Basic software installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash ./basic_apps/basic.sh; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Lock SSH
fn_sshconf() { echo; 
while true; do
        read -p "Do you wish run SSH installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash ./ssh_conf/ssh_config.sh; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Docker and Docker-compose
fn_docker() { echo; 
while true; do
        read -p "Do you wish run Docker installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash ./docker_install/docker_install.sh; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

# Firewall UFW
fn_ufw() { echo; 
while true; do
        read -p "Do you wish run UFW installation? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) bash ./ufw_install/ufw_basic_install.sh; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done }

fn_bye() { echo "Exiting installer."; exit 0; }
fn_fail() { echo "Wrong option." exit 1; }

sub-submenu() {
    echo -ne "
$(yellowprint 'Install Programs')
$(greenprint '1)') Basic Software
$(greenprint '2)') User backup
$(greenprint '3)') SSH lock
$(greenprint '4)') Crontask
$(greenprint '5)') Docker
$(blueprint '6)') Back
$(magentaprint '7)') MAIN MENU
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        clear;
        fn_basicapp
        sub-submenu
        ;;
    2)
        clear;
        fn_backup
        sub-submenu
        ;;
    3)
        clear;
        fn_sshconf
        sub-submenu
        ;;
    4)
        clear;
        fn_autorun
        sub-submenu
        ;;
    5)
        clear;
        fn_docker
        sub-submenu
        ;;
    6)
        clear;
        submenu
        ;;
    7)
        clear;
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

sub2-submenu() {
    echo -ne "
$(yellowprint 'Installing Bootstrap scripts')
$(greenprint '1)') Basic
$(greenprint '2)') Simple
$(greenprint '3)') Full
$(blueprint '4)') Back
$(magentaprint '5)') MAIN MENU
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        clear;
        fn_basic
        sub-submenu
        ;;
    2)
        clear;
        fn_simple
        sub-submenu
        ;;
    3)
        clear;
        fn_full
        sub-submenu
        ;;
    4)
        clear;
        submenu
        ;;
    5)
        clear;
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

submenu() {
    echo -ne "
$(blueprint 'Install Programs')
$(greenprint '1)') Install Programs
$(greenprint '2)') Bootstrap script
$(magentaprint '3)') Back
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        clear;
        sub-submenu
        submenu
        ;;
    2)
        clear;
        sub2-submenu
        submenu
        ;;
    3)
        clear;
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

infomenu() {
    echo -ne "
$(magentaprint 'Info')
$(greenprint '1)') Read more abou the script
$(magentaprint '2)') Back
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        clear;
        cat README.md
        mainmenu
        ;;
    2)
        clear;
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

mainmenu() {
    echo -ne "
$(magentaprint 'MAIN MENU')
$(greenprint '1)') Install
$(greenprint '2)') Info
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        clear;
        submenu
        mainmenu
        ;;
    2)
        clear;
        infomenu
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

mainmenu