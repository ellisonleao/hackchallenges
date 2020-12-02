import re

GMAIL_RE = re.compile(r"[a-z\.]+@gmail.com")


if __name__ == "__main__":
    N = int(input())
    gmails = []
    for N_itr in range(N):
        firstNameEmailID = input().split()
        firstName = firstNameEmailID[0]
        emailID = firstNameEmailID[1]
        if GMAIL_RE.match(emailID):
            gmails.append(firstName)

    gmails.sort()
    for i in gmails:
        print(i)
