# -*- coding:utf-8 -*-
def merge_the_tools(string, k):
    strings = []
    slen = len(string)
    for i in range(0, slen, k):
        strings.append(string[i: i + k])
    #for item in strings:
    #    print(item)
    for j in range(slen//k):
        sub_string=strings[j]
        del_indx = []
        for m in range(0,k-1,1):
            for n in range(k-1,m,-1):
                if m!=n and sub_string[m]==sub_string[n]:
                    ## 这里删除以后，下标值就会发生改变
                    ## 可以把要删除的下标记录下来，再最后进行删除
                    #sub_lst=list(sub_string).pop(n)
                    #sub_string=''.join(sub_lst)
                    if n not in del_indx:
                        del_indx.append(n)
                if m==n:
                    break
        ## 进行下标的删除
        # print("del index", del_indx)
        sub_string = list(sub_string)
        del_indx.sort(reverse=True)
        for i in del_indx:
            #print("--->", i)
            sub_string.pop(i)
        sub_string = ''.join(sub_string)
        print(sub_string)


if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)