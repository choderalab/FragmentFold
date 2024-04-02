This directory is where Siyang will put all of her initial tests for trying to dock the proteins.

The inputs folder has the original Xray crystal screen structure.
The reseq_search folder contains the search for sequences similar to the Xray crystal structure sequence from refseq database.
The colabfold folder contains structure generation of Xray fragments bound to colabfold generated structure of refseq sequences.
The prepped folder contains scripts and results from trying to prep all of the strucutures.
The docking_tries folder contains scripts tried for docking ligand into generated structures.
The troubleshoot_notebooks folder details attempts at tracing back the issue with --oe-active-residue utilization in asap-prep, which is an attempt to prep ligand in structures that failed to prep in prepped.
