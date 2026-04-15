# GENERAL ONT VARIANT CALLING PIPELINE USING CLAIR3 (GPU)
From fastq to vcf. This pipeline is run on Mac Silicon.
For additional guide, check the original Github: https://github.com/HKU-BAL/Clair3/blob/main/docs/gpu_quick_start.md

## Architecture 

```
.
├── config/              
│   └── config.yml      
├── envs/               
│   └── environment.yml  
├── scripts/             
│   ├── preprocessing.sh
│   ├── alignment.sh
│   └── variant_calling.sh
├── data/                
│   └── README.md        
├── results/             
└── README.md

```

## Installation

NanoStat is written for Python3 and will not work in Python2.7 or older.
```
conda install -c bioconda nanostat chopper minimap2

# step 1: install the envrionment using brew
brew install gnu-getopt bash llvm micromamba pypy3 samtools

# step 2: install PyTorch and other dependencies using mamba
mamba create -n clair3 python=3.11 autoconf automake zlib libdeflate cffi parallel -y
mamba activate clair3
python -m pip install torch==2.2.* torchvision==0.17.* torchaudio==2.2.*

# step 3: build the dependecies
git clone https://github.com/HKU-BAL/Clair3.git && cd Clair3
make PREFIX=${CONDA_PREFIX}
```


