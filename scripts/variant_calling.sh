#!/bin/bash
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

CONFIG=${1:-config.yaml}

# Parse config
SAMPLE=$(yq '.sample_name' "$CONFIG")
BAM=$(yq '.bam_fn' "$CONFIG")
REF=$(yq '.ref_fn' "$CONFIG")
OUTDIR=$(yq '.output_dir' "$CONFIG")
THREADS=$(yq '.threads' "$CONFIG")
PLATFORM=$(yq '.platform' "$CONFIG")
MODEL=$(yq '.model_name' "$CONFIG")
QUAL=$(yq '.qual' "$CONFIG")

python3 /path/to/clair3/run_clair3.py \
  --bam_fn=${BAM} \
  --ref_fn=${REF} \
  --sample_name=${SAMPLE} \
  --threads=${THREADS} \
  --platform=${PLATFORM} \
  --model_path=${CONDA_PREFIX}/bin/models/${MODEL} \
  --use_longphase_for_intermediate_phasing \  # optional, recommended for ONT
  --qual=${QUAL}  # optional, default=2
