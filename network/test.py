class stuff(object):
    def __init__(self, _v, _w):
        self.v = _v
        self.w = _w

def bag01(N, V, stuffs):
    lst1=range(N+1)
    lst2=range(V+1)
    dp = [0] * (V+1)
    dp = [dp] * (N+1)
    for i in lst1[1:]:
        for j in lst2[1:]:
            #print(i ,j)
            if j<stuffs[i-1].v:dp[i][j]=dp[i - 1][j]
            else:dp[i][j]=max(dp[i - 1][j],dp[i - 1][j-stuffs[i-1].v]+stuffs[i-1].w)
    return dp[N][V]

stuffss = [stuff(5, 10), stuff(3, 5.4), stuff(3, 5.4)]
print (bag01(3, 6, stuffss))