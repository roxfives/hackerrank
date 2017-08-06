#!/bin/python3

n = int(input())
fx = list(map(int, input().split() ) )
gx = [0] * n

for i in range(n):
    gx[fx[i]-1] = i+1

print('\n'.join(format(itm) for itm in gx) )