"""
--- Day 5: Doesn't He Have Intern-Elves For This? ---

Santa needs help figuring out which strings in his text file are naughty or nice.

A nice string is one with all of the following properties:

It contains at least three vowels (aeiou only), like aei, xazegov, or aeiouaeiouaeiou.
It contains at least one letter that appears twice in a row, like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
It does not contain the strings ab, cd, pq, or xy, even if they are part of one of the other requirements.
For example:

ugknbfddgicrmopn is nice because it has at least three vowels (u...i...o...), a double letter (...dd...), and none of the disallowed substrings.
aaa is nice because it has at least three vowels and a double letter, even though the letters used by different rules overlap.
jchzalrnumimnmhp is naughty because it has no double letter.
haegwjzuvuyypxyu is naughty because it contains the string xy.
dvszwmarrgswjxmb is naughty because it contains only one vowel.
How many strings are nice?

--- Part Two ---

Realizing the error of his ways, Santa has switched to a better model of determining whether a string is naughty or nice. None of the old rules apply, as they are all clearly ridiculous.

Now, a nice string is one with all of the following properties:

It contains a pair of any two letters that appears at least twice in the string without overlapping, like xyxy (xy) or aabcdefgaa (aa), but not like aaa (aa, but it overlaps).
It contains at least one letter which repeats with exactly one letter between them, like xyx, abcdefeghi (efe), or even aaa.
For example:

qjhvhtzxzqqjkmpb is nice because is has a pair that appears twice (qj) and a letter that repeats with exactly one letter between them (zxz).
xxyxx is nice because it has a pair that appears twice and a letter that repeats with one between, even though the letters used by each rule overlap.
uurcxstgmygtbstg is naughty because it has a pair (tg) but no repeat with a single letter between them.
ieodomkazucvgmuy is naughty because it has a repeating letter with one between (odo), but no pair that appears twice.
How many strings are nice under these new rules?
"""
from collections import Counter
import re

inp = open('input.txt').readlines()
inp = [i.strip() for i in inp]
VOWELS = ['a', 'e', 'i', 'o', 'u']


def is_nice_word(word):
    # disallowed words rule
    disallowed = ['ab', 'cd', 'pq', 'xy']
    exists = list(filter(lambda x: x in word, disallowed))
    if exists:
        return False

    # counting vowels
    counter = Counter(word)
    total_vowels = 0
    for i in VOWELS:
        if i in counter:
            total_vowels += counter[i]

    if not total_vowels >= 3:
        return False

    # check for twice in a row chars
    regex = r'([a-z])\1'  # backtracking regex
    has_twice_chars = re.search(regex, word)
    if not has_twice_chars:
        return False

    return True


def is_nice_word_two(word):
    first_rule = r'(\w\w)\w*\1'
    second_rule = r'(\w)\w\1'
    if re.search(first_rule, word) and re.search(second_rule, word):
        return True
    return False


# part 1
total = 0
for word in inp:
    if is_nice_word(word):
        total += 1
print(total)

# part 2
total = 0
for word in inp:
    if is_nice_word_two(word):
        total += 1
print(total)
