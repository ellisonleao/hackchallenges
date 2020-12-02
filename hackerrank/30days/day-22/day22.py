class Node:
    def __init__(self, data):
        self.left = None
        self.right = None
        self.data = data


class Solution:
    def insert(self, root, data):
        if not root:
            return Node(data)

        if data <= root.data:
            n = self.insert(root.left, data)
            root.left = n
        else:
            n = self.insert(root.right, data)
            root.right = n
        return root

    def getHeight(self, root):
        if not root:
            return -1
        return max(self.getHeight(root.left), self.getHeight(root.right)) + 1


def main():
    t = int(input())
    myTree = Solution()
    root = None
    for i in range(t):
        data = int(input())
        root = myTree.insert(root, i)
    height = myTree.getHeight(root)
    print(height)


if __name__ == "__main__":
    main()
