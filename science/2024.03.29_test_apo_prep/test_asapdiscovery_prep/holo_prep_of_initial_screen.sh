#!/bin/bash
#BSUB -J holo_zika_screen_prep
#BSUB -n 16
#BSUB -R rusage[mem=4]
#BSUB -q cpuqueue
#BSUB -W 2:00
#BSUB -oo log_files/prep_orig_docked_ligands.out
#BSUB -eo log_files/prep_orig_docked_ligands.stderr
source ~/.bashrc
conda activate asapdiscovery
asap-prep \
--target ZIKV-NS2B-NS3pro \
--structure-dir /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output \
--output-dir apo_prepped \
--ref-chain B \
--active-site-chain B \
--use-dask
echo done
