def to_bin(n):
    n = int(n)
    out = ""
    while n > 0:
        out += f"{n%2}"
        n //= 2
    return out[::-1]

def main():
    n = to_bin(input())
    splitted = n.split("0")
    cons = len(max(splitted))
    print(cons)

if __name__ == "__main__":
    main()
