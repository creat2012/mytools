import re
n=input()
n=int(n)
while n!=0:
    n-=1
    str=input()
    print(bool(re.match(r"^(\+|-|.)\d*\.\d+", str)))