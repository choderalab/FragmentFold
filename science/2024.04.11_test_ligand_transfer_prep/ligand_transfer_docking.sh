#!/bin/bash
#BSUB -J zika_screen_ligand_transfer_docking
#BSUB -n 8
#BSUB -R rusage[mem=4]
#BSUB -q cpuqueue
#BSUB -W 24:00
#BSUB -oo log_files/zika_screen_ligand_transfer_docking.out
#BSUB -eo log_files/zika_screen_ligand_transfer_docking.stderr
source ~/.bashrc
conda activate asapdiscovery
asap-docking ligand-transfer-docking \
--structure-dir /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures \
--ref-structure-dir /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output \
--cache-dir prepped_complexes \
--save-to-cache \
--output-dir output \
--ref-chain B \
--active-site-chain A
echo done