#!/usr/bin/env python3

import os
import sys

infile = sys.argv[1]

f = open(infile, "r")

data = []

check = []

count_list1 = []

for line in f:
        line = line.strip().split('/')
        data.append(line[0])
        data.append(line[1])

for elem in data:
        if elem in check:
                pass
        else:
                count_list = []
                check.append(elem)
                a = data.count(elem)
                count_list.append(elem)
                count_list.append(a)
                count_list1.append(count_list)
                print (elem + "\t" + str(a))

