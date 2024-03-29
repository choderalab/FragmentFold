#BSUB -J DOCK
#BSUB -n 1
#BSUB -R rusage[mem=32]
#BSUB -q gpuqueue
#BSUB -gpu "num=1"
#BSUB -W 10:00
#BSUB -o log_files/dock_test.out
#BSUB -e log_files/dock_test.stderr
source ~/.bashrc
cd /home/pengs/fold_zika/test_dock
conda activate asapdiscovery

asap-docking cross-docking --ligands input/lig_0.smi --pdb-file input/NP_722463.1_lig_0.pdb --target ZIKV-NS2B-NS3pro --cache-dir /home/pengs/fold_zika/test_dock/temp_dir --structure-selector PairwiseSelector --output-dir /home/pengs/fold_zika/test_dock/output

echo done
