class Person:
    def __init__(self, initial_age):
        if initial_age < 0:
            print("Age is not valid, setting age to 0.")
            initial_age = 0

        self.age = initial_age

    def yearPasses(self):
        self.age += 1

    def amIOld(self):
        if self.age < 13:
            print("You are young.")

        elif self.age >= 13 and self.age < 18:
            print("You are a teenager.")
        else:
            print("You are old.")


if __name__ == "__main__":
    t = int(input())
    for i in range(0, t):
        age = int(input())
        p = Person(age)
        p.amIOld()
        for j in range(0, 3):
            p.yearPasses()
        p.amIOld()
        print("")
