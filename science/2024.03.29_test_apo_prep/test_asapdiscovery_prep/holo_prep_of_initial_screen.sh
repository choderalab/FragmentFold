#!/bin/bash
#BSUB -J PREP
#BSUB -n 16
#BSUB -R rusage[mem=50]
#BSUB -q cpuqueue
#BSUB -W 2:00
#BSUB -o log_files/prep_orig_docked_ligands.out
#BSUB -e log_files/prep_orig_docked_ligands.stderr
source ~/.bashrc
conda activate asapdiscovery
asap-prep --target ZIKV-NS2B-NS3pro \
--structure_dir /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output \
--output-dir apo_prepped \
--ref-chain B \
--active-site-chain B
echo done