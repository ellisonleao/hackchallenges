class Node:
    def __init__(self, data):
        self.data = data
        self.next = None


class Solution:
    def insert(self, root, data):
        p = Node(data)

        if not root:
            root = p
        elif not root.next:
            root.next = p
        else:
            start = root
            while start.next:
                start = start.next
            start.next = p
        return root

    def display(self, head):
        current = head
        while current:
            print(current.data, end=" ")
            current = current.next

    def removeDuplicates(self, head):
        if not head:
            return

        n = head.next
        out = [head.data]
        while n:
            if n.data not in out:
                out.append(n.data)

            n = n.next
        print(" ".join(map(str, out)))


def main():
    mylist = Solution()
    T = int(input())
    head = None
    for i in range(T):
        data = int(input())
        head = mylist.insert(head, i)
    head = mylist.removeDuplicates(head)
    mylist.display(head)


if __name__ == "__main__":
    main()
