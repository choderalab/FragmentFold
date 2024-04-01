#BSUB -J FOLD
#BSUB -n 1
#BSUB -R rusage[mem=32]
#BSUB -q gpuqueue
#BSUB -gpu "num=1"
#BSUB -W 10:00
#BSUB -o log_files/fold_zikv_refseqs.out
#BSUB -e log_files/fold_zikv_refseqs.stderr
cd /home/pengs/fold_zika

bash run_colabfold.sh arborviruses_full.csv template_dir results 10
echo done
