minimap2 -ax map-ont \
  -t 4 \
  /path/to/ref.fasta \
  output/sample_filtered.fastq.gz \

samtools sort -o output/sample.bam
samtools index output/sample.bam
