#!/bin/bash
# creates a virtual environment if there isn't one

create_env() {
    if [[ $(find . -type d -name "*env") ]]; then
        echo "virtual config present"
    else
        python3 -m venv .actionsvenv
    fi

    if [[ ! -f 'requirements.txt' ]]; then
        touch requirements.txt
    else
        pip freeze | sudo tee requirements.txt >>/dev/null
    fi

    echo "Run 'source .actionsvenv/bin/activate' to activate your virtual environment"
}

create_env
