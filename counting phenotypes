#!/usr/bin/env python3

import os
import sys

infile = sys.argv[1]
pop_size= int(sys.argv[2])

f = open(infile, 'r')


#dictionary for CYP2C19
dict1 = {
'*1':'nf',
'*2':'nonf',
'*3':'nonf',
'*4':'nonf',
'*5':'nonf',
'*6':'nonf',
'*7':'nonf',
'*8':'nonf',
'*9':'df',
'*10':'df',
'*11':'nf',
'*12':'uf',
'*13':'nf',
'*14':'uf',
'*15':'nf',
'*16':'df',
'*17':'inf',
'*18':'nf',
'*19':'df',
'*22':'nonf',
'*23':'nonf',
'*24':'nonf',
'*25':'df',
'*26':'df',
'*28':'nf',
'*29':'uf',
'*30':'uf',
'*31':'uf',
'*32':'uf',
'*33':'uf',
'*34':'uf',
'*35':'nonf',
'*36':'nonf',
'*37':'nonf',
'*38':'nf',
'*39':'uf'
}

all_pheno = []

for line in f:
        pheno = []
        if '[' in line:
                all_pheno.append('IND')

        else:
                diplo = line.strip().split('/')

                for i in diplo:
                        pheno.append(dict1[i])

                if pheno.count('inf') == 2:
                        all_pheno.append('UM')
                elif pheno.count('inf') == 1 and (pheno.count('nf') == 1):
                        all_pheno.append('RM')
                elif pheno.count('nf') == 2:
                        all_pheno.append('NM')
                elif pheno.count('nonf') == 2:
                        all_pheno.append('PM')
                elif pheno.count('nonf') == 1 and (pheno.count('df') == 1):
                        all_pheno.append('LPM')
                elif pheno.count('nf') == 1 and (pheno.count('nonf') == 1):
                        all_pheno.append('IM')
                elif pheno.count('inf') == 1 and (pheno.count('nonf') == 1):
                        all_pheno.append('IM')
                elif pheno.count('nf') == 1 and (pheno.count('df') == 1):
                        all_pheno.append('LIM')
                elif pheno.count('inf') == 1 and (pheno.count('df') == 1):
                        all_pheno.append('LIM')
                elif pheno.count('df') == 2:
                        all_pheno.append('LIM')

                else:
                        all_pheno.append('IND')


nm = all_pheno.count ('NM')
um = all_pheno.count ('UM')
rm = all_pheno.count ('RM')
im = all_pheno.count ('IM')
lpm = all_pheno.count ('LPM')
pm = all_pheno.count ('PM')
lim = all_pheno.count ('LIM')
ind = all_pheno.count ('IND')

#print ('\n'.join(all_pheno))

print ('normal metabolizers: {}'.format(round(nm/pop_size*100,1)))
print ('ultrarapid  metabolizers: {}'.format(round(um/pop_size*100,1)))
print ('rapid metabolizers: {}'.format(round(rm/pop_size*100,1)))
print ('intermediate metabolizers: {}'.format(round(im/pop_size*100,1)))
print ('likely intermediate metabolizers: {}'.format(round(lim/pop_size*100,1)))
print ('likely poor  metabolizers: {}'.format(round(lpm/pop_size*100,1)))
print ('poor metabolizers: {}'.format(round(pm/pop_size*100,1)))
print ('indeterminate: {}'.format(round(ind/pop_size*100,1)))
