```
import sys

def small(n):
    for i in range(n, fac(n) + 1, n):
        if multiply(i, n):
            return i
    return -1

def multiply(x, n):
    for i in range(1, n):
        if x % i != 0:
            return False
    return True

def fac(n):
    if n > 1: return n * fac(n - 1)
    elif n >= 0: return 1
    else: return -1


t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    print (small(n))
```
