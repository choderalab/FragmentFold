Notebook why_not_prep.ipynb details attempts in understanding why I am not able to run 'asap-prep --target ZIKV-NS2B-NS3pro --pdb-file zikv_ns2b3.pdb --output-dir orig_prepped --align zikv_ns2b3.pdb --oe-active-site-residue TYR:161::B --ref-chain B --active-site-chain B'. There is likely an issue by which I am refering to the active site residue, most likely resulting in syntax error. See Issue #927 for thread on how to resolve: https://github.com/choderalab/asapdiscovery/issues/927 
I documented previous progress in: https://www.notion.so/choderalab/Why-NOT-oe-active-site-residue-cff0cdd3f74b4870830250bb4608980c
Some of my reference from previous folding at home usage: https://github.com/choderalab/fah_prep/tree/main

Notebook trace_cache_for_dock.ipynb is an attempt to debug issues experienced in docking with preppared file in designated cache directory. Issue is more detailed in: https://github.com/choderalab/asapdiscovery/issues/960
