class Node:
    def __init__(self, data):
        self.data = data
        self.next = None


class Solution:
    def display(self, head):
        current = head
        while current:
            print(current.data, end=" ")
            current = current.next

    def insert(self, head, data):
        n = Node(data)
        if head is None:
            return n

        item = head
        while item.next:
            item = item.next
        item.next = n
        return head


mylist = Solution()
t = int(input())
head = None

for i in range(t):
    data = int(input())
    head = mylist.insert(head, data)


mylist.display(head)
