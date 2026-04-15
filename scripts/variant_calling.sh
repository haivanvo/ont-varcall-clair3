#!/bin/bash
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

CONFIG=${1:-config.yaml}  # nhận config file làm argument, default config.yaml

# Parse config
SAMPLE=$(yq '.sample_name' "$CONFIG")
BAM=$(yq '.bam_fn' "$CONFIG")
REF=$(yq '.ref_fn' "$CONFIG")
OUTDIR=$(yq '.output_dir' "$CONFIG")
THREADS=$(yq '.threads' "$CONFIG")
PLATFORM=$(yq '.platform' "$CONFIG")
MODEL=$(yq '.model_name' "$CONFIG")
QUAL=$(yq '.qual' "$CONFIG")
USE_LONGPHASE=$(yq '.use_longphase' "$CONFIG")

# Build command
CMD="python3 /path/to/clair3/run_clair3.py \
  --bam_fn=${BAM} \
  --ref_fn=${REF} \
  --sample_name=${SAMPLE} \
  --threads=${THREADS} \
  --platform=${PLATFORM} \
  --model_path=${CONDA_PREFIX}/bin/models/${MODEL} \
  --output=${OUTDIR} \
  --qual=${QUAL}" # There are additional flags in Clair3 command, check their github for more 
