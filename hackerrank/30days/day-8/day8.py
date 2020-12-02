def main():
    n = int(input())
    inputs = [input().rstrip().split() for _ in range(n)]
    d = {key: val for key, val in inputs}

    while True:
        try:
            i = input()
        except EOFError:
            break

        if d.get(i):
            print(f"{i}={d[i]}")
        else:
            print("Not found")
        break


if __name__ == "__main__":
    main()

