#!/bin/python3

n = int(input())
f = list(map(int, input().split() ) )

for i in range(n):
    print(f[f[i] - 1])