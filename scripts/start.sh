#!/usr/bin/env bash

if [ -d ".venv/Scripts" ]; then
        source .venv/Scripts/activate
    else
        source .venv/bin/activate
fi

if command -v py &> /dev/null; then
        PYTHON="py"

elif command -v python3 &> /dev/null; then
        PYTHON="python3"
else
    echo "Please, run "make setup" or "./setup.sh" if you on Windows
fi

$PYTHON main.py