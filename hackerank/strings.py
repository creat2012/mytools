def merge_the_tools(string, k):
    str_len = len(string)
    substr_len = str_len // k
    strlst = []
    for i in range(0, str_len, k):
        tempstring = list(string[i: i + k])
        for j in range(k - 1, 0, -1):
            if tempstring[j] in tempstring[:j]:
                del tempstring[j]
        strlst.append(''.join(tempstring))
    #strlst = [string[i: i + substr_len] for i in range(0, len(string))]
    for i in range(0, substr_len):
        print(strlst[i])

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)

"""

if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
    s = (lambda a, b: a + b, student_marks[query_name])
    print(s)
"""