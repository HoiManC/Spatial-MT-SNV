source activate GATK
export PATH=$PATH:/home/u3570318/bin/GATK/openlogic-openjdk-21.0.4+7-linux-x64/bin

cd Pt-13A/Pt-13A/outs/
/home/u3570318/bin/GATK/gatk-4.6.0.0/gatk MarkDuplicatesSpark -I possorted_genome_bam.bam -O possorted_genome_bam_marked_duplicates.bam
