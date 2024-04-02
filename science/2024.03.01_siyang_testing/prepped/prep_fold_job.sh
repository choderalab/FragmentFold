#BSUB -J PREP
#BSUB -n 1
#BSUB -R rusage[mem=50]
#BSUB -q gpuqueue
#BSUB -gpu "num=1"
#BSUB -W 12:00
#BSUB -o log_files/prep_docked_ligands.out
#BSUB -e log_files/prep_docked_ligands.stderr
source ~/.bashrc
cd /home/pengs/fold_zika
conda activate asapdiscovery

bash prep_files.sh
echo done
