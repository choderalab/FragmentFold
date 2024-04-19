(asapdiscovery) 24-04-02 2:13PM alexpayne:/Users/alexpayne/Scientific_Projects/fragment-fold/science/2024.03.29_test_apo_prep/test_asapdiscovery_prep/apo_prepped
?2 % asap-prep --target ZIKV-NS2B-NS3pro --pdb-file /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/zikv_ns2b_ns3pro_apo.pdb --output-dir apo_prepped --oe-active-site-residue "TYR:161: :B" --ref-chain B --active-site-chain B
[04/02/24 14:15:03] INFO     Running protein prep with inputs: target=<TargetTags.ZIKV-NS2B-NS3pro: 'ZIKV-NS2B-NS3pro'>                                           protein_prep.py:171
                             pdb_file=PosixPath('/Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/zik
                             v_ns2b_ns3pro_apo.pdb') fragalysis_dir=None structure_dir=None cache_dir=None save_to_cache=True align=None ref_chain='B'
                             active_site_chain='B' seqres_yaml=None loop_db=None oe_active_site_residue='TYR:161: :B' use_dask=False dask_type=<DaskType.LOCAL:
                             'local'> dask_cluster_n_workers=10 dask_cluster_max_workers=40 logname='' loglevel=20
                             output_dir=PosixPath('/Users/alexpayne/Scientific_Projects/fragment-fold/science/2024.03.29_test_apo_prep/test_asapdiscovery_prep/ap
                             o_prepped/apo_prepped')
                    INFO     Dumping input schema to                                                                                                              protein_prep.py:172
                             /Users/alexpayne/Scientific_Projects/fragment-fold/science/2024.03.29_test_apo_prep/test_asapdiscovery_prep/apo_prepped/apo_prepped/
                             inputs.json
                    INFO     Loading structures from pdb:                                                                                                         protein_prep.py:216
                             /Users/alexpayne/Scientific_Projects/fragment-fold/data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/zikv_ns2b_ns3pro_apo.pd
                             b
Warning: Truncating title to 80 characters for ASP-MET-TYR-ILE-GLU-ARG-ALA-GLY-ASP-ILE-THR-TRP-GLU-LYS-ASP-ALA-GLU-VAL-THR-GLY-ASN-SER-PRO-ARG-LEU-ASP-VAL-ALA-LEU-ASP-GLU-SER-GLY-ASP-PHE-SER-LEU-VAL-GLU
                    INFO     Loaded 1 complexes                                                                                                                   protein_prep.py:229
                    INFO     No seqres yaml specified, selecting based on target: ZIKV-NS2B-NS3pro                                                                protein_prep.py:232
                    INFO     No reference structure specified, using canonical structure                                                                          protein_prep.py:242
[04/02/24 14:15:04] INFO     Prepping complexes                                                                                                                   protein_prep.py:252
                    INFO     Prepping 1 complexes                                                                                                                 protein_prep.py:146
No mutations found
Warning: No BioAssembly transforms found, using input molecule as biounit: _chainB_ASP-MET-TYR-ILE-GLU-ARG-ALA-GLY-ASP-ILE-THR-TRP-GLU-LYS-ASP-ALA-GLU-VAL-THR-GLY-
Warning: Iridium - Structure: _chainB_ASP-MET-TYR-ILE-GLU-ARG-ALA-GLY-ASP-ILE-THR-TRP-GLU-LYS-ASP-ALA-GLU-VAL-THR-GLY- has no REMARK data
Processing BU # 1 with title: _chainB_ASP-MET-TYR-ILE-GLU-ARG-ALA-GLY-ASP-ILE-THR-TRP-GLU-LYS-ASP-ALA-GLU-VAL-THR-GLY-, chains AB
Warning: OEInteractionHintContainer() : cannot be initialized with the given ligand!
Warning: OEPerceiveInteractionHints() active site is not initialized correctly!
Skipping OEAM1BCCCharges charge engine, due to LIG(A-172) having > 100 atoms
   Falling back to charging other_ligands with OEMMFF94Charges
Warning: Failed to find a pocket associated with the input predicate
Warning: Failed, no pocket found with site residue predicate
Warning: Unable to parse and utilize specified site residue TYR:161: :B to define site in _chainB_ASP-MET-TYR-ILE-GLU-ARG-ALA-GLY-ASP-ILE-THR-TRP-GLU-LYS-ASP-ALA-GLU-VAL-THR-GLY- - skipping
Traceback (most recent call last):
  File "/Users/alexpayne/miniforge-pypy3/envs/asapdiscovery/bin/asap-prep", line 8, in <module>
    sys.exit(protein_prep())
  File "/Users/alexpayne/miniforge-pypy3/envs/asapdiscovery/lib/python3.10/site-packages/click/core.py", line 1157, in __call__
    return self.main(*args, **kwargs)
  File "/Users/alexpayne/miniforge-pypy3/envs/asapdiscovery/lib/python3.10/site-packages/click/core.py", line 1078, in main
    rv = self.invoke(ctx)
  File "/Users/alexpayne/miniforge-pypy3/envs/asapdiscovery/lib/python3.10/site-packages/click/core.py", line 1434, in invoke
    return ctx.invoke(self.callback, **ctx.params)
  File "/Users/alexpayne/miniforge-pypy3/envs/asapdiscovery/lib/python3.10/site-packages/click/core.py", line 783, in invoke
    return __callback(*args, **kwargs)
  File "/Users/alexpayne/Scientific_Projects/asapdiscovery/asapdiscovery-workflows/asapdiscovery/workflows/prep_workflows/cli.py", line 122, in protein_prep
    protein_prep_workflow(inputs)
  File "/Users/alexpayne/Scientific_Projects/asapdiscovery/asapdiscovery-workflows/asapdiscovery/workflows/prep_workflows/protein_prep.py", line 262, in protein_prep_workflow
    prepped_complexes = prepper.prep(
  File "/Users/alexpayne/Scientific_Projects/asapdiscovery/asapdiscovery-modeling/asapdiscovery/modeling/protein_prep.py", line 157, in prep
    outputs = self._prep(inputs=inputs)
  File "/Users/alexpayne/Scientific_Projects/asapdiscovery/asapdiscovery-modeling/asapdiscovery/modeling/protein_prep.py", line 310, in _prep
    raise ValueError("Failed to make design unit.")
ValueError: Failed to make design unit.