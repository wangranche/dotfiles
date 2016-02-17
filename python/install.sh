#!/bin/sh

plugins=(
    appnope
    autopep8
    click
    decorator
    docopt
    flake8
    Glances
    gnureadline
    ipython
    ipython-genutils
    isitup
    jupyter
    linecache2
    legofy
    mccabe
    NetEase-MusicBox
    nose
    numpy
    path.py
    pep8
    pexpect
    pickleshare
    pip
    powerline-status
    psutil
    ptyprocess
    pyflakes
    pytz
    requests
    setuptools
    simplegeneric
    six
    traceback2
    traitlets
    unittest2
    vboxapi
    virtualenv
    virtualenvwrapper
    wheel
)

plugins3=(
    django
    bpython
    you-get
)
    
pip install --upgrade pip

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

pip install ${plugins[@]}

pip3 install ${plugins3[@]}