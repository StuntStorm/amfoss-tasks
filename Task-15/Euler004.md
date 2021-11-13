```
import sys

def palindrome(i):
    return str(i) == str(i)[::-1]

large = 0

for i in range(100, 999):
    for j in range(i+1, 1000):
        p = i * j
        if palindrome(p) and p > large:
            large = p
print(large)  
t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    print(palindrome(n))
```
