class Calculator:
    @staticmethod
    def power(n, p):
        if n < 0 or p < 0:
            return "n and p should be non-negative"
        return n ** p


def main():
    t = int(input())
    for i in range(t):
        n, p = map(int, input().split())
        try:
            ans = Calculator.power(n, p)
            print(ans)
        except Exception as e:
            print(e)


if __name__ == "__main__":
    main()
