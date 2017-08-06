#!/bin/python3

msg = input()
key = int(input())

for i, char in enumerate(msg):
    msg = msg[:i] + chr( ( (int(char)+key) % 10) + 48) + msg[i+1:]

print(msg)