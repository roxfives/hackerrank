#! /usr/bin/python2

VOWELS = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']

def main():
    s = raw_input()
    minion_game(s)



def minion_game(string):
    global VOWELS
    stuart = []
    kevin = []

    for i in range(0, len(string)):
        if(string[i] in VOWELS):
            for j in range(i+1, len(string)):
                kevin.append(string[i:j])
        else:
            for j in range(i+1, len(string)):
                stuart.append(string[i:j])

    print stuart
    print kevin
    print len(stuart)
    print len(kevin)

if __name__ == '__main__':
    main()