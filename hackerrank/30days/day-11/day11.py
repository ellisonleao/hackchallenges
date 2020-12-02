def hourglass_sum(arr):
    sums = []
    for row in range(6):
        for col in range(6):
            try:
                top = arr[row][col] + arr[row][col + 1] + arr[row][col + 2]
                middle = arr[row + 1][col + 1]
                bottom = (
                    arr[row + 2][col] + arr[row + 2][col + 1] + arr[row + 2][col + 2]
                )
                total = top + middle + bottom
                sums.append(total)
            except IndexError:
                pass
    print(max(sums))


def main():
    arr = []
    try:
        for _ in range(6):
            arr.append(list(map(int, input().rstrip().split())))
    except EOFError:
        pass

    hourglass_sum(arr)


if __name__ == "__main__":
    main()
