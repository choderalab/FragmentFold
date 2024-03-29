from asapdiscovery.data.metadata.resources import master_structures
from pathlib import Path
import shutil
input_path = master_structures["ZIKV-NS2B-NS3pro"]

shutil.copy(input_path, Path("../data/ns2-ns3b-zika-fragment-screen/fragment-screen-inputs/zikv_ns2b_ns3pro.pdb"))
