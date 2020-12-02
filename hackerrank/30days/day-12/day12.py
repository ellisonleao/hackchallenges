class Person:
    def __init__(self, firstName, lastName, idNumber):
        self.firstName = firstName
        self.lastName = lastName
        self.idNumber = idNumber

    def printPerson(self):
        print("Name:", self.lastName + ",", self.firstName)
        print("ID:", self.idNumber)


class Student(Person):
    def __init__(self, firstName, lastName, idNumber, scores=[]):
        self.scores = scores
        super().__init__(firstName, lastName, idNumber)

    def calculate(self):
        if len(self.scores) == 0:
            return "T"

        avg = sum(self.scores) / len(self.scores)

        if avg > 100:
            return "O"

        grades_scale = {
            "O": lambda x: 90 <= x <= 100,
            "E": lambda x: 80 <= x < 90,
            "A": lambda x: 70 <= x < 80,
            "P": lambda x: 55 <= x < 70,
            "D": lambda x: 40 <= x < 55,
            "T": lambda x: x < 40,
        }

        for grade, rule in grades_scale.items():
            if rule(avg):
                return grade


def main():
    line = input().split()
    firstName = line[0]
    lastName = line[1]
    idNum = line[2]
    numScores = int(input())
    scores = list(map(int, input().split()))
    s = Student(firstName, lastName, idNum, scores)
    s.printPerson()
    print("Grade:", s.calculate())


if __name__ == "__main__":
    main()
