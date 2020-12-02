def main():
    n = int(input())
    arr = list(map(int, input().rstrip().split()))
    arr.reverse()
    print(" ".join([str(i) for i in arr]))

if __name__ == "__main__":
    main()
