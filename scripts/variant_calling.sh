# step 1: install the envrionment using brew
brew install gnu-getopt bash llvm micromamba pypy3 samtools

# step 2: install PyTorch and other dependencies using mamba
mamba create -n clair3 python=3.11 autoconf automake zlib libdeflate cffi parallel -y
mamba activate clair3
python -m pip install torch==2.2.* torchvision==0.17.* torchaudio==2.2.*

# step 3: build the dependecies
git clone https://github.com/HKU-BAL/Clair3.git && cd Clair3
make PREFIX=${CONDA_PREFIX}

# run Clair3

#!/bin/bash
set -euo pipefail

export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

SAMPLE=/path/to/user
REF=/path/to/ref/fasta
MODEL=/path/to/model
OUTDIR=/path/to/output

python3 /path/to/clair3/run_clair3.py \
  --bam_fn=${SAMPLE}/HG001.bam \
  --ref_fn=${REF}/GRCh38_no_alt_analysis_set.fasta \
  --sample_name=HG001 \
  --threads=4 \
  --platform=ont \
  --model_path=${MODEL} \
  --output=${OUTDIR} \
  --qual=10 # optional 
