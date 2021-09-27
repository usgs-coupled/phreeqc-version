#!/usr/bin/python3
import sys
import datetime

# 2021-03-09 = 15700

if len(sys.argv) == 1:
    print("No rel given")
    exit(1)

local = datetime.datetime(1978, 3, 15)
rel = int(sys.argv[1])
if rel < 15700:
    print("rel must be at least 15700")
    exit(1)
d = local + datetime.timedelta(days=rel)
print(d.date())
