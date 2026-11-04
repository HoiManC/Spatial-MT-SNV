source activate GATK
export PATH=$PATH:/home/u3570318/bin/GATK3/openlogic-openjdk-8u422-b05-linux-x64/bin

cd Pt-13A/Pt-13A/outs/
java -Xmx450g -jar /home/u3570318/bin/GATK3/GenomeAnalysisTK-3.8-1-0-gf15c1c3ef/GenomeAnalysisTK.jar -T SplitNCigarReads -R /home/u3570318/references/hg38_spaceranger/refdata-gex-GRCh38-2024-A/fasta/genome.fa -I possorted_genome_bam_marked_duplicates.bam -o possorted_genome_bam_marked_duplicates_split.bam -rf ReassignOneMappingQuality -RMQF 255 -RMQT 60 -U ALLOW_N_CIGAR_READS
