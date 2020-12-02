def main():
    t = input()
    try:
        t = int(t)
        print(t)
    except ValueError:
        print("Bad String")


if __name__ == "__main__":
    main()
