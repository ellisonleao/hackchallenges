def main():
    n = int(input())
    is_odd = lambda x: bool(x & 1)

    if is_odd(n) and n != 1:
        return print("Weird")
    elif n >= 2 and n <= 5:
        return print("Not Weird")
    elif n >= 6 and n <= 20:
        return print("Weird")
    else:
        return print("Not Weird")

if __name__ == "__main__":
    main()
