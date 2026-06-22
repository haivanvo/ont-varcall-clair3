# GENERAL ONT VARIANT CALLING PIPELINE USING CLAIR3 (GPU)
From fastq to vcf. This pipeline is run on Unix environment.
For additional guide, check the original GitHub: https://github.com/HKU-BAL/Clair3/blob/main/docs/gpu_quick_start.md

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
│   ├── variant_calling.sh
│   └── run_clair3_pipeline.sh              
└── README.md

```

## Installation

NanoStat is written for Python3 and will not work in Python2.7 or older.

Install the environment using brew:
```
brew install gnu-getopt bash llvm micromamba pypy3 samtools
```

Install PyTorch and other dependencies using mamba:
``` mamba create -n clair3 python=3.11 autoconf automake zlib libdeflate cffi parallel -y
mamba activate clair3
python -m pip install torch==2.2.* torchvision==0.17.* torchaudio==2.2.*
```

Build the dependencies:
```
git clone https://github.com/HKU-BAL/Clair3.git && cd Clair3
make PREFIX=${CONDA_PREFIX}
```


