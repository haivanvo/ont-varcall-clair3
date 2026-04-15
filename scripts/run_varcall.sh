#!/bin/bash
set -e  

echo "[1/3] Running preprocessing..."
bash preprocessing.sh

echo "[2/3] Running alignment..."
bash alignment.sh

echo "[3/3] Running variant calling..."
bash variant_calling.sh

echo "Done."
