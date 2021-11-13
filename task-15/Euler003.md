```
import sys

def large(n):
    i = 2
    while i<n:
        if n%i==0:
            n = n//i
        else:
            i = i+i
    return n

t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    print(large(n))
```
