#!/bin/python3

msg = input()

for i, char in enumerate(msg):
    msg = msg[:i] + chr( ( (int(char)+1) % 10) + 48) + msg[i+1:]

print(msg)