#! /usr/bin/python2

def main():
    string = raw_input()
    k = int(raw_input())

    merge_the_tools(string, k)

# def merge_the_tools(string, k):
#     n = len(string)/k
#     # print len(string)
#     rst = []

#     for i in range(0, n):
#         rst.append(string[i*k:(i+1)*k])
#         # print('append: ' + rst[i])

#         rmvd = 0
#         for j in range(0, len(rst[i])):
#             if(rst[i].find(rst[i][j-rmvd]) < j-rmvd):
#                 if(j+1 >= len(rst[i])+rmvd):
#                     rst[i] = rst[i][:j-rmvd]
#                 else:
#                     rst[i] = rst[i][:j-rmvd] + rst[i][j+1-rmvd:]
                
#                 rmvd += 1

#     for elem in rst:
        # print elem

def merge_the_tools(string, k):
    buff = ''
    i = 0
    for lt in string:
        if(buff.find(lt) < 0):
            buff += lt
        
        i += 1
        if(i == k):
            print buff
            buff = ''
            i = 0
            

if __name__ == '__main__':
    main()
