# Parameters are optional 
# QC before trimming
NanoStat --fastq input.fastq.gz \
  -t 4 \
  -n output/sample_preqc.txt

# Trim bad reads
chopper \
  -q 10 \
  -l 1000 \
  -i input.fastq.gz \
  > output/sample_filtered.fastq.gz

# QC after trimming
NanoStat --fastq output/sample_filtered.fastq.gz \
  -t 4 \
  -n output/sample_postqc.txt
