#!/bin/sh
set -ex

uv run rvc_cli.py prerequisites --pretraineds_v1_f0=false --pretraineds_v1_nof0=false --pretraineds_v2_f0=false --pretraineds_v2_f0=false --exe=false

uv run rvc_cli.py download --model_link "file://$(realpath ./logs/CABAL.zip)"
