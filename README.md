# GENERAL ONT VARIANT CALLING PIPELINE USING CLAIR3 (GPU)
From fastq to vcf. This pipeline is run on Mac Silicon.
For general guide, check the original Github: https://github.com/HKU-BAL/Clair3/blob/main/docs/gpu_quick_start.md

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


