

def IsTrangleOrArea(x1, y1, x2, y2, x3, y3):
    return abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2.0)


def IsInside(x1, y1, x2, y2, x3, y3, x, y):
    # 三角形ABC的面积
    ABC = IsTrangleOrArea(x1, y1, x2, y2, x3, y3)

    # 三角形PBC的面积
    PBC = IsTrangleOrArea(x, y, x2, y2, x3, y3)

    # 三角形ABC的面积
    PAC = IsTrangleOrArea(x1, y1, x, y, x3, y3)

    # 三角形ABC的面积
    PAB = IsTrangleOrArea(x1, y1, x2, y2, x, y)

    return (ABC == PBC + PAC + PAB)