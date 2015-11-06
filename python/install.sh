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
    linecache2
    mccabe
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
    wheel
)

pip install --upgrade pip

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

pip install ${plugins[@]}
