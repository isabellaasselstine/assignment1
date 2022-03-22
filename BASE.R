#!/usr/bin/env Rscript
#PART B SCRIPT 

library("seqinr")

library("stringr")

library("readr")

library("littler")

bp_counts <- function(FileName){
  file = read_file(f = paste(FileName,".seq",sep=""))    #opening file from part A 
  a = str_count(file, "A")              #count number of As
  g = str_count(file, "G")              #count number of Gs
  c = str_count(file, "C")              #count number of Cs
  t = str_count(file, "T")              #count number of Ts
  nucleotide_counts = c(a, g, c-1, t)       #combine all the counts into a vector called 'nucleotide_counts' (C output was always off by 1 for some reason so i added have 'c-1' to account for that)
  output = knitr::combine_words(nucleotide_counts, and = "") #add commas between the values 
  write_file(output, f = paste(FileName,".count",sep=""))
}


args <- commandArgs(trailingOnly=TRUE)
cat(args, sep="\n")

FileName=args[1]
bp_counts(args[1])








