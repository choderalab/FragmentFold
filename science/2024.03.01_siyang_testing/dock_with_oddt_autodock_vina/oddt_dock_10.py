'''
Quick script to run oddt docking with
'''

import os
from pathlib import Path
import oddt
from oddt.docking.AutodockVina import *
import logging


logger = logging.getLogger(__name__)
prots_dir = Path('/home/pengs/fold_zika/only_prot')
output_dir = Path('/home/pengs/fold_zika/oddt_dock/output_10')
lig_h_dir = Path("/home/pengs/fold_zika/lig_h_sdfs/")


# Return a list of all the files in input directory and and layered directory inside
def traverse_files(directory):
    all_files = []
    # Traverse files within a directory
    for root, dirs, files in os.walk(directory):
        for file in files:
            all_files.append(file)
    return all_files

# Go through each protein
prot_files = traverse_files(prots_dir)
for prot_file in prot_files:
    file = prots_dir/prot_file
    protein = next(oddt.toolkit.readfile('pdb', str(file)))
    protein.protein = True
    logger.info(f"Protein in {prot_file}.")
    

    # Make directory to save the docked poses into
    name = Path(file).stem
    save_dir = output_dir/name
    
    # Go through each ligand
    lig_files = traverse_files(lig_h_dir)
    for lig_file in lig_files:
        logger.info(f"Current ligand {lig_file}.")
        ligand = next(oddt.toolkit.readfile('sdf', str(lig_h_dir/lig_file)))
        # Ligand use to center the docking box defined in the docking object
        vina = autodock_vina(auto_ligand = str(lig_h_dir/lig_file),size=(10, 10, 10))
        dock_ligs = vina.dock(protein = protein, ligands = ligand)
        # Save the different docked poses of the ligand 
        for i in range(len(dock_ligs)):
            write_vina_pdbqt(dock_ligs[i], save_dir,name_id=i)
