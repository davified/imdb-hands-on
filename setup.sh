#!/bin/bash

brew bundle
export CC=/usr/local/Cellar/gcc/7.2.0/bin/g++-7 # required for pip installing glove_python. Update this with your own path to g++ 
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
