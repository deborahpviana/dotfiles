#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Update references
    sudo apt-get update -y

    # Install executables
    sudo apt-get -y install \
        build-essential \
        zsh \
        tmux \
        git \
        curl \
        software-properties-common \
        apt-transport-https \
        ssh \
        exuberant-ctags \
        wget \
        terminator

else
    brew install tmux clang clang-format
fi

