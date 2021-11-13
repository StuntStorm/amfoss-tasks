```
import sys


t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    r1 = (n-1)//3
    r2 = (n-1)//5
    r3 = (n-1)//15
    
    q1 = (r1+1)
    q2 = (r2+1)
    q3 = (r3+1)
    
    s1 = 3*r1*q1//2
    s2 = 5*r2*q2//2
    s3 = 15*r3*q3//2
    
    sum = s1+s2-s3
    print(sum)
```
