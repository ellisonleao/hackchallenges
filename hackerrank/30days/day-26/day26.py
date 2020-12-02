import datetime


def main():
    day, month, year = map(int, input().split())
    return_date = datetime.datetime(year, month, day)

    day, month, year = map(int, input().split())
    due_date = datetime.datetime(year, month, day)

    diff = return_date - due_date
    days_gone = diff.days if diff.days > 0 else 0

    fine = 1000
    if return_date.year == due_date.year:
        if days_gone <= 31:
            fine = 15 * days_gone
        else:
            fine = 500 * (days_gone // 31)

    print(fine)


if __name__ == "__main__":
    main()
