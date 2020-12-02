class Solution:
    def __init__(self):
        self.stack = []
        self.queue = []

    def pushCharacter(self, item):
        self.stack.append(item)

    def popCharacter(self):
        return self.stack.pop()

    def enqueueCharacter(self, item):
        self.queue.append(item)

    def dequeueCharacter(self):
        return self.queue.pop(0)


def main():
    s = input()
    obj = Solution()

    l = len(s)
    # push/enqueue all the characters of string s to stack
    for i in range(l):
        obj.pushCharacter(s[i])
        obj.enqueueCharacter(s[i])

    isPalindrome = True

    for i in range(l // 2):
        if obj.popCharacter() != obj.dequeueCharacter():
            isPalindrome = False
            break
    # finally print whether string s is palindrome or not.
    if isPalindrome:
        print("The word, " + s + ", is a palindrome.")
    else:
        print("The word, " + s + ", is not a palindrome.")


if __name__ == "__main__":
    main()
