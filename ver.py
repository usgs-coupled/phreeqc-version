import sys
import datetime

# 2021-03-09 = 15700

if len(sys.argv) > 1:
    local = datetime.datetime.strptime(sys.argv[1], "%Y-%m-%d")
else:
    local = datetime.datetime.now()

origin = datetime.datetime(1978, 3, 15)
print((local - origin).days)
