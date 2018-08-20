#! /usr/bin/python2

def main():
    string = raw_input()
    k = int(raw_input())

    merge_the_tools(string, k)

# The function responsible for merging
def merge_the_tools(string, k):
    buff = ''   # Buffer to hold each word
    i = 0       # Counter to checkhow many letters have been checked
    for lt in string:
        if(buff.find(lt) < 0): # If the letter isnt in the word yet
            buff += lt
        
        i += 1
        if(i == k):            # If the chunk has been finished
            print buff
            buff = ''
            i = 0
            
# Calls main
if __name__ == '__main__':
    main()
