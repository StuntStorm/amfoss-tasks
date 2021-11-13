```
import sys

def fib(n):
    r1 = 1 
    r2 = 1
    total = 0
    while True :
        s = r1 + r2
        if s >= n:
            return total
        if s % 2 == 0: 
            total += s
        r1, r2 = r2, s

t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    print(fib(n))
```
