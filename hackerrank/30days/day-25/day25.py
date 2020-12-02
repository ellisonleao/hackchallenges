# Prime number calculation in O(sqrt(n))
def main():
    for _ in range(int(input())):
        i = int(input())
        if i == 1 or (i % 2 == 0 and i > 2):
            print("Not prime")
            continue

        sq = int(i ** (1 / 2)) + 1
        for j in range(3, sq):
            if i % j == 0:
                print("Not prime")
                break
        else:
            print("Prime")


if __name__ == "__main__":
    main()
