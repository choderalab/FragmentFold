## load file name from array
declare -a pdb_arr
pdb_files=$(ls /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures/*.pdb | sed -e 's/\/.*\///g' | sed -e 's/\.pdb$//')
i=0
for pdb_file in $pdb_files; do
pdb_arr[ $i ]=$pdb_file
(( i++ ))
done

ref_files=$(ls /data/chodera/paynea/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output/*.pdb | sed -e 's/\/.*\///g' | sed -e 's/\.pdb$//')
i=0
for ref_file in $ref_files; do
ref_arr[ $i ]=$ref_file
(( i++ ))
done

# iterate through whole array
#for pdb_file in ${pdb_arr[@]}; do
#echo $pdb_file
#done

total=$(( ${#pdb_arr[@]} * ${#ref_arr[@]}))
echo ${#pdb_arr[@]}
echo ${#ref_arr[@]}
echo $total

for ((i = 0; i < total; i++)); do
pdb_index=$(( i / ${#ref_arr[@]}))
ref_index=$(( i % ${#ref_arr[@]}))
pdb_file=${pdb_arr[pdb_index]}
ref_file=${ref_arr[ref_index]}
echo $pdb_file $ref_file
done
