#!/usr/bin/env python3

import os
import sys
import pandas as pd

infile=sys.argv[1]
table= pd.read_csv(infile, sep='\t')
##print (table)



variants= table['Existing_variation'].tolist()
l_var= len(variants)

allele= table['Allele'].tolist()

consequences= table['Consequence'].tolist()

protein_position= table['Protein_position'].tolist()

aa= table['Amino_acids'].tolist()

CADD= table['CADD_PHRED'].tolist()

SIFT= table['SIFT'].tolist()

polyphen= table['PolyPhen'].tolist()

lrt= table['LRT_score'].tolist()

provean= table['PROVEAN_score'].tolist()

vest= table['VEST4_score'].tolist()



data_tab= []
data_tab = [['Variant IDS','Allele', 'Consequence','protein_position','aa','CADD','SIFT','PolyPhen-2','LRT','PROVEAN','VEST4','consensus']]
for i in variants:
    data=[]
    ind= variants.index(i)
    data.append(i.split(',') [0])
    data.append(allele[ind])
    data.append(consequences[ind])
    data.append(protein_position[ind])
    data.append(aa[ind])

#if float(CADD[ind])>15:
#  data.append("X")
#else:
#  data.append('')
    if CADD[ind] == '-':
        data.append('')


    elif float(CADD[ind])>19.19:
        data.append("X")
    else:
        data.append('')


    if SIFT[ind] == '-':
        data.append('')
    else:
        a= SIFT[ind].index('(')
        sift_score= SIFT[ind][a+1:-1]

        if float(sift_score) < 0.0376:
            data.append("X")
        else:
                data.append('')

    if polyphen[ind] == '-':
        data.append('')
    else:
        b= polyphen[ind].index('(')
        poly_score= polyphen[ind][b+1:-1]

        if float(poly_score) > 0.3841:
            data.append("X")
        else:
            data.append('')


    if lrt[ind] == '-':
        data.append('')


    else:
        if float(lrt[ind]) < 0.0025:
                data.append("X")

        else:
                data.append('')

    if provean[ind] == '-':
        data.append('')
    else:
        if ',' in provean[ind]:
            provean_score = (provean[ind].split (',')) [0]
        else:
            provean_score = provean[ind]
        if provean_score == '.':
            data.append('')
        elif float(provean_score) < -3.286:
            data.append("X")
        else:
            data.append('')

    if vest[ind] == '-':
         data.append('')
    else:
        if ',' in vest[ind]:
            vest_score = (vest[ind].split (',')) [0]
        else:
            vest_score = vest[ind]
        if vest_score == '.':
            data.append('')
        elif float(vest_score) > 0.4534 :
            data.append("X")
        else:
            data.append('')

    if data.count ('X') >= 3:
        data.append('X')
    else:
        data.append('')

    data_tab.append(data)



out_file = open ('global_ADME_mod_new1.txt','w')
for i in data_tab :
    out_file.write ('\t'.join(i) + '\n')
