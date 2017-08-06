#!/bin/python3

n = int(input() )
f = list(map(int, input().split() ) )

for i in range(n):
    if(f[f[i] - 1] != i+1):
        print("NO")
        exit()

print("YES")