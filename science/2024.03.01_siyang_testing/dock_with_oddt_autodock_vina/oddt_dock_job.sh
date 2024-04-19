#BSUB -J DOCK
#BSUB -n 1
#BSUB -R rusage[mem=32]
#BSUB -q gpuqueue
#BSUB -gpu "num=1"
#BSUB -W 10:00
#BSUB -oo log_files/dock.out
#BSUB -eo log_files/dock.stderr
source ~/.bashrc
cd /home/pengs/fold_zika/oddt_dock
conda activate oddt

python /home/pengs/notebook/oddt_dock.py

echo done
