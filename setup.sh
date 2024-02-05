#!/usr/bin/env bash
#encoding=utf8
IS_WINDOWS=false

if [ -n "${VIRTUAL_ENV}" ]; then
    echo -e "\n+=====================================================================+"
    echo "| Please deactivate your virtual environment before running setup.sh. |"
    echo "| You can do this by running 'deactivate'.                            |"
    echo -e "+=====================================================================+\n"

    exit 2
fi

# Checking OS type

if echo "$OSTYPE" | grep -qE '^msys.*|^cygwin.*'; then
    IS_WINDOWS=true

elif echo "$OSTYPE" | grep -qE '^linux-gnu.*' && [ -f '/etc/debian_version' ]; then
    PKGMGR="apt install -y"

    if [ ! -e .deps_installed ]; then
        sudo dpkg --configure -a

        # Updating packages
        sudo apt update
        sudo apt upgrade -y
    fi

elif echo "$OSTYPE" | grep -qE '^linux-gnu.*' && [ -f '/etc/arch-release' ]; then
    PKGMGR="pacman -Sy --noconfirm"

elif echo "$OSTYPE" | grep -qE '^darwin.*'; then
    if ! command -v brew >/dev/null; then

        # Installing Brew for Mac
        ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)
    fi

    PKGMGR="brew install"

else
    printf "Unrecognised OS"
    exit 1
fi

function installed_python() {
    if command -v py &> /dev/null; then
        PYTHON="py"

    elif command -v python3 &> /dev/null; then
        PYTHON="python3"
    else
        return 0
    fi

    return 1
}


function setup() {
    if [ "$IS_WINDOWS" = true ]; then
        if [ ! "$(command -v git)" ]; then
            echo -e "\nPlease install git in one of these ways:"

            if command -v winget &> /dev/null; then
                # winget install -eh --source winget --no-upgrade --disable-interactivity --accept-package-agreements --moniker mingit
                echo "* From winget (reccomended): \"winget install -eh -s winget --no-upgrade --disable-interactivity --moniker mingit\""
            fi

            echo "* From official website: <https://git-scm.com/download/win>"
            echo -e "\n"
            exit 1
        fi
    else
        if [ ! -e .deps_installed ]; then
            sudo $PKGMGR make git
        fi
    fi


    hash -r

    if [ ! -d ".venv" ]; then
        $PYTHON -m venv .venv
    fi

    if [ -d ".venv/Scripts" ]; then
        source .venv/Scripts/activate
    else
        source .venv/bin/activate
    fi

    if [ -e .deps_installed ]; then
        echo -e "\nDependencies have already been established."
        echo -e "If you want to re-install - execute the command \"rm .deps_installed\" in the current folder.\n"
    else
        pip install -r requirements.txt

        echo "yes" >> .deps_installed
    fi

    echo -e "=============== Success!! ==================="
}

# ==============================
# ==============================

installed_python
if [ $? -eq 1 ]; then
    if [ "$($PYTHON --version | awk '{print $2}' | cut -d. -f2)" -le 8 ]; then
        echo "Install newest version of Python."
        exit 1
    fi
else
    if [ "$IS_WINDOWS" = true ]; then
            echo -e "\nPlease install Python in one of these ways:"

            if command -v winget &> /dev/null; then
                # winget install -eh --source winget --no-upgrade --moniker python3
                echo "* From winget (reccomended): \"winget install -eh -s winget --no-upgrade --moniker python3\""
            fi

            echo "* From official website: <https://www.python.org/downloads/>"
            echo "* From Microsoft Store (not reccomended): <https://www.microsoft.com/store/productId/9NCVDN91XZQP>"
            echo -e "\n"
            exit 1
    else
        sudo $PKGMGR python3 python3-pip
    fi
fi

# Start installation of dependencies
setup
