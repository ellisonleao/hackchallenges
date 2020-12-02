def main():
    n = int(input())
    for i in range(n):
        s = input()
        print(s[::2], s[1::2])

if __name__ == "__main__":
    main()
