#!/bin/sh

set -o errexit
set -o nounset

sleep 60
jupyter lab --port=3333 --no-browser --ip=0.0.0.0 --allow-root
