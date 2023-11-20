#!/bin/bash
source .env/bin/activate

cd stco/tests

python -m unittest -v test_overlay