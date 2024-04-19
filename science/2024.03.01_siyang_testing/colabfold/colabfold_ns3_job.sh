#BSUB -J FOLD
#BSUB -n 1
#BSUB -R rusage[mem=32]
#BSUB -q gpuqueue
#BSUB -gpu "num=1"
#BSUB -W 10:00
#BSUB -o log_files/fold_ns3_refseqs.out
#BSUB -e log_files/fold_ns3_refseqs.stderr
cd /home/pengs/fold_zika

bash run_colabfold.sh fold_ns3/ns3_truncated_match.csv template_dir fold_ns3/msa_folded 10
echo done
