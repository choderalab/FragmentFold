#BSUB -J PREP
#BSUB -n 1
#BSUB -R rusage[mem=32]
#BSUB -q gpuqueue
#BSUB -gpu "num=1"
#BSUB -W 10:00
#BSUB -o log_files/prep_test.out
#BSUB -e log_files/prep_test.stderr
source ~/.bashrc
cd /home/pengs/fold_zika/test_prep
conda activate asapdiscovery

asap-prep --target ZIKV-NS2B-NS3pro --pdb-file zikv_ns2b3.pdb --output-dir orig_prepped --align zikv_ns2b3.pdb --oe-active-site-residue 'TYR:161: :B' --ref-chain B --active-site-chain B


echo done
