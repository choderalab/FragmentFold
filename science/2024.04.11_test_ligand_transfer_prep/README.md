Using this branch:
https://github.com/choderalab/asapdiscovery/pull/972

Likely will go out of date soon.

I ran ligand_transfer_docking_array.sh, and it was taking so long that I started trying to make a super parallel version
that splits up all the reference + target combinations into their own jobs. naturally as soon as I wrote the bash code
to do that, the original job started providing results!