#!/bin/bash
asap-docking ligand-transfer-docking \
--pdb-file /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/alphafold-flavivirus-structures/NP_722463.1.pdb \
--ref-pdb-file /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/output/lig_1_protein.pdb \
--cache-dir prepped_complexes \
--save-to-cache \
--output-dir output \
--ref-chain B \
--active-site-chain A
