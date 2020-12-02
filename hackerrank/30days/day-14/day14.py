import itertools


class Difference:
    def __init__(self, a):
        self.__elements = a
        self.maximumDifference = 0

    def computeDifference(self):
        m = 0
        for i, j in itertools.combinations(self.__elements, 2):
            if abs(i - j) > m:
                m = abs(i - j)

        self.maximumDifference = m


def main():
    _ = input()
    a = [int(e) for e in input().split(" ")]

    d = Difference(a)
    d.computeDifference()

    print(d.maximumDifference)


if __name__ == "__main__":
    main()
