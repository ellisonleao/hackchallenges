"""
--- Day 3: Perfectly Spherical Houses in a Vacuum ---

Santa is delivering presents to an infinite two-dimensional grid of houses.

He begins by delivering a present to the house at his starting location, and then an elf at the North Pole calls him via radio and tells him where to move next. Moves are always exactly one house to the north (^), south (v), east (>), or west (<). After each move, he delivers another present to the house at his new location.

However, the elf back at the north pole has had a little too much eggnog, and so his directions are a little off, and Santa ends up visiting some houses more than once. How many houses receive at least one present?

For example:

> delivers presents to 2 houses: one at the starting location, and one to the east.
^>v< delivers presents to 4 houses in a square, including twice to the house at his starting/ending location.
^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2 houses.
Your puzzle answer was 2592.

--- Part Two ---

The next year, to speed up the process, Santa creates a robot version of himself, Robo-Santa, to deliver presents with him.

Santa and Robo-Santa start at the same location (delivering two presents to the same starting house), then take turns moving based on instructions from the elf, who is eggnoggedly reading from the same script as the previous year.

This year, how many houses receive at least one present?

For example:

^v delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
^>v< now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
^v^v^v^v^v now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.

"""
output = open('output.txt').read().strip()


def move_grid(grid, char, x, y):
    if char == '>':
        x += 1
    elif char == '<':
        x -= 1
    elif char == '^':
        y += 1
    elif char == 'v':
        y -= 1

    grid.add('{}{}'.format(x, y))
    return grid, x, y


# part 1
x = 0
y = 0

path = {'00'}

for i in output:
    path, x, y = move_grid(path, i, x, y)

print(len(path))


# part 2
x = 0
y = 0
x2 = 0
y2 = 0

path = {'00'}

is_santa = True
for i in output:
    if is_santa:
        path, x, y = move_grid(path, i, x, y)
    else:
        path, x2, y2 = move_grid(path, i, x2, y2)

    is_santa = not is_santa

print(len(path))
