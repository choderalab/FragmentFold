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

## load target name from array
declare -a pdb_arr
pdb_files=$(ls /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures/*.pdb | sed -e 's/\/.*\///g' | sed -e 's/\.pdb$//')
i=0
for pdb_file in $pdb_files; do
pdb_arr[ $i ]=$pdb_file
(( i++ ))
done

# load ref complexes
ref_files=$(ls /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output/*.pdb | sed -e 's/\/.*\///g' | sed -e 's/\.pdb$//')
i=0
for ref_file in $ref_files; do
ref_arr[ $i ]=$ref_file
(( i++ ))
done

# use modulo and remainder to get all combintions
total=$(( ${#pdb_arr[@]} * ${#ref_arr[@]}))
echo ${#pdb_arr[@]}
echo ${#ref_arr[@]}
echo $total

# this is what iterating through all of them looks like
#for ((i = 0; i < total; i++)); do
#pdb_index=$(( i / ${#ref_arr[@]}))
#ref_index=$(( i % ${#ref_arr[@]}))
#pdb_file=${pdb_arr[pdb_index]}
#ref_file=${ref_arr[ref_index]}
#echo $pdb_file $ref_file
#done

# instead we can just query based on the job index

i=$((LSB_JOBINDEX-1))
pdb_index=$(( i / ${#ref_arr[@]}))
ref_index=$(( i % ${#ref_arr[@]}))
pdb_file=${pdb_arr[pdb_index]}
ref_file=${ref_arr[ref_index]}


asap-docking ligand-transfer-docking \
--pdb-file "/data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures/"$pdb_file".pdb" \
--ref-structure-dir "/data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output/"$ref_file".pdb" \
--cache-dir "/lila/data/chodera/asap-datasets/foldalysis/ns2_ns3b_zika/prepped_complexes/"$pdb_file \
--save-to-cache \
--output-dir "/lila/data/chodera/asap-datasets/foldalysis/ns2_ns3b_zika/self_docked_complexes/"$pdb_file \
--ref-chain B \
--active-site-chain A
echo done
