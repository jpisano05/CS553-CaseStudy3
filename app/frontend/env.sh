#!/bin/bash

# Create python venv
rm -rf .venv
python3 -m venv .venv

# Activate python venv
source .venv/bin/activate

# Install pytorch
pip install gradio requests
