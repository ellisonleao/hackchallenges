def main():
    n = int(input().strip())
    a = list(map(int, input().strip().split(" ")))

    # bubble sort
    total = 0
    for i in range(n):
        swaps = 0
        for j in range(n - 1):
            if a[j] > a[j + 1]:
                # swap
                a[j], a[j + 1] = a[j + 1], a[j]
                swaps += 1
                total += 1

        if swaps == 0:
            print(f"Array is sorted in {total} swaps.")
            print(f"First Element: {a[0]}")
            print(f"Last Element: {a[len(a)-1]}")
            return


if __name__ == "__main__":
    main()
