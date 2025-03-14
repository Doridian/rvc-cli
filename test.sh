#!/bin/sh
set -e

set -x
uv run rvc_cli.py tts --tts_file '' --tts_text "$1" --tts_voice 'en-US-GuyNeural' --output_tts_path ./logs/tts.flac --output_rvc_path ./logs/rvc.flac --pth_path ./logs/CABAL/CABAL.pth --index_path ./logs/CABAL/model.index
ffplay -autoexit ./logs/rvc.flac
