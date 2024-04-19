#!/bin/bash
## Example usage:
## bsub -J "zika_screen_ligand_transfer_docking[1-7]" < zika_screen_ligand_transfer_docking
#BSUB -n 1
#BSUB -R rusage[mem=64]
#BSUB -q cpuqueue
#BSUB -W 24:00
#BSUB -oo log_files/zika_screen_ligand_transfer_docking_%I.out
#BSUB -eo log_files/zika_screen_ligand_transfer_docking_%I.stderr
source ~/.bashrc
conda activate asapdiscovery

## load file name from array
declare -a pdb_arr
pdb_files=$(ls /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures/*.pdb | sed -e 's/\/.*\///g' | sed -e 's/\.pdb$//')
i=0
for pdb_file in $pdb_files; do
pdb_arr[ $i ]=$pdb_file
(( i++ ))
done

pdb_file=${pdb_arr[ $LSB_JOBINDEX-1]}
echo $pdb_file

asap-docking ligand-transfer-docking \
--pdb-file "/data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures/"$pdb_file".pdb" \
--ref-structure-dir /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output \
--cache-dir "/lila/data/chodera/asap-datasets/foldalysis/ns2_ns3b_zika/prepped_complexes/"$pdb_file \
--save-to-cache \
--output-dir "/lila/data/chodera/asap-datasets/foldalysis/ns2_ns3b_zika/self_docked_complexes/"$pdb_file \
--ref-chain B \
--active-site-chain A
echo done
