import sys
import datetime

# 2021-03-09 = 15700

if len(sys.argv) == 1:
    print("No version given")
    exit(1)

local = datetime.datetime(1978, 3, 15)
ver = int(sys.argv[1])
d = local + datetime.timedelta(days=ver)
print(d.date())
