#! /bin/bash
## Read in SE species and pass to 'species_run.sh'
##
## Arguments to species_run.sh:
## [1] Spectra
## [2] Number of iterations
## [3] Folder

NG=50000
FD="FFT_individuals_0320"

while read l; do
        echo $l
        run_individual.sh $l $NG $FD
done < ../data/spectra_list_FFT.txt
