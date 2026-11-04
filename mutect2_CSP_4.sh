source activate CSP

cd Pt-13A/Pt-13A/outs/
gunzip filtered_feature_bc_matrix/barcodes.tsv.gz
cellsnp-lite -s possorted_genome_bam_marked_duplicates_split_BQSR.bam -b filtered_feature_bc_matrix/barcodes.tsv -O CSP_somatic -R /home/u3570318/pancreas_ST/P13_somatic.vcf.gz -p 20 --minMAF 0 --minCOUNT 0 --gzip
