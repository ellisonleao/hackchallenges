class Node:
    def __init__(self, data):
        self.right = None
        self.left = None
        self.data = data


class Solution:
    def insert(self, root, data):
        if not root:
            return Node(data)

        if data <= root.data:
            cur = self.insert(root.left, data)
            root.left = cur
        else:
            cur = self.insert(root.right, data)
            root.right = cur

        return root

    def levelOrder(self, root):
        if not root:
            return

        q = [root]
        output = []
        while q:
            item = q.pop(0)
            output.append(item.data)

            if item.left:
                q.append(item.left)

            if item.right:
                q.append(item.right)

        print(" ".join(map(str, output)))


def main():
    T = int(input())
    myTree = Solution()
    root = None
    for i in range(T):
        data = int(input())
        root = myTree.insert(root, i)
    myTree.levelOrder(root)


if __name__ == "__main__":
    main()
