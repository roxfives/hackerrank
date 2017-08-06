#!/bin/python3
n = int(input())
fx = list(map(int, input().split() ) )
test = [False] * n

for i in range(n):
    test[ (fx[i]-1) % n] = True

for itm in test:
    if(not itm):
        print("NO")
        exit()

print("YES")