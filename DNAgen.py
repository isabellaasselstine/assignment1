#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Mar 16 17:24:37 2022

@author: isabellaasselstine
"""


#part A 

import random
def random_DNA_seq(FileName, Nb):                #function with parameters for FileName and Nb
    FileName = open(FileName +'.seq', 'w+')      #open a file called FileName (which can be changed) with a .seq extention
    nucleotides = ["A","T","G","C"]              #create nucleotide vector 
    sequence = ''.join(random.choices(nucleotides, k=Nb))  #create a random string of nucleotides 
    FileName.write('>DNA sequence \n')                     #add fasta formatting to the file 
    FileName.write(sequence)                               #add the randomly generated sequence to the file 
    FileName.close()                                       #close the file 
    
random_DNA_seq("test", 10)
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    