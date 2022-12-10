#!/usr/bin/env python3

import os
import sys

infile = sys.argv[1]

f = open(infile, "r")

data = []

check = []

for line in f:
        if "[" in line:
                data.append(line.strip())

        else:
                line = line.strip().split("/")
                line = sorted(line)
                line = "/".join(line)
                data.append(line)


for elem in data:
        if elem in check:
                pass
        else:
                check.append(elem)
                a = data.count(elem)
                print (elem + "\t" + str(a))
