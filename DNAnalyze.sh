#!/bin/bash

for i in {1..100}
do
	python3 -c 'import DNAgen; DNAgen.random_DNA_seq("DNAseq'$i'" ,1000)'
	Rscript BASE.R "DNAseq"$i 
	cat DNAseq$i.count | sort >> CombinedDNAfiless.csv
done 


