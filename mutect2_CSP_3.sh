source activate GATK
export PATH=$PATH:/home/u3570318/bin/GATK/openlogic-openjdk-21.0.4+7-linux-x64/bin

cd Pt-13A/Pt-13A/outs/
/home/u3570318/bin/GATK/gatk-4.6.0.0/gatk BaseRecalibrator -I possorted_genome_bam_marked_duplicates_split.bam -R /home/u3570318/references/hg38_spaceranger/refdata-gex-GRCh38-2024-A/fasta/genome.fa --known-sites /home/u3570318/references/dbSNP_hg38/Homo_sapiens_assembly38.dbsnp138.vcf -O recal_data.table
/home/u3570318/bin/GATK/gatk-4.6.0.0/gatk ApplyBQSR -R /home/u3570318/references/hg38_spaceranger/refdata-gex-GRCh38-2024-A/fasta/genome.fa -I possorted_genome_bam_marked_duplicates_split.bam --bqsr-recal-file recal_data.table -O possorted_genome_bam_marked_duplicates_split_BQSR.bam

cd ../../../
/home/u3570318/bin/GATK/gatk-4.6.0.0/gatk Mutect2 -R /home/u3570318/references/hg38_spaceranger/refdata-gex-GRCh38-2024-A/fasta/genome.fa -I Pt-13A/Pt-13A/outs/possorted_genome_bam_marked_duplicates_split.bam -I Pt-13B/Pt-13B/outs/possorted_genome_bam_marked_duplicates_split.bam -I Pt-13C/Pt-13C/outs/possorted_genome_bam_marked_duplicates_split.bam -I Pt-13D/Pt-13D/outs/possorted_genome_bam_marked_duplicates_split.bam -I Pt-13E/Pt-13E/outs/possorted_genome_bam_marked_duplicates_split.bam -O P13_somatic.vcf.gz
