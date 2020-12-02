"""
--- Day 4: The Ideal Stocking Stuffer ---

Santa needs help mining some AdventCoins (very similar to bitcoins) to use as gifts for all the economically forward-thinking little girls and boys.

To do this, he needs to find MD5 hashes which, in hexadecimal, start with at least five zeroes. The input to the MD5 hash is some secret key (your puzzle input, given below) followed by a number in decimal. To mine AdventCoins, you must find Santa the lowest positive number (no leading zeroes: 1, 2, 3, ...) that produces such a hash.

For example:

If your secret key is abcdef, the answer is 609043, because the MD5 hash of abcdef609043 starts with five zeroes (000001dbbfa...), and it is the lowest such number to do so.
If your secret key is pqrstuv, the lowest number it combines with to make an MD5 hash starting with five zeroes is 1048970; that is, the MD5 hash of pqrstuv1048970 looks like 000006136ef....
Your puzzle answer was 282749.

--- Part Two ---

Now find one that starts with six zeroes.

"""
import hashlib

secret = 'yzbqklnj'


def has_five_zeros(c):
    print(c[:5])
    return c[:5] == '00000'


def has_six_zeros(c):
    print(c[:6])
    return c[:6] == '000000'


# part 1
i = 0
current = bytearray('{}{}'.format(secret, i), 'utf-8')
md = hashlib.md5(current).hexdigest()
while not has_five_zeros(md):
    i += 1
    current = bytearray('{}{}'.format(secret, i), 'utf-8')
    md = hashlib.md5(current).hexdigest()
    print(current, md)

# part 2
i = 0
current = bytearray('{}{}'.format(secret, i), 'utf-8')
md = hashlib.md5(current).hexdigest()
while not has_six_zeros(md):
    i += 1
    current = bytearray('{}{}'.format(secret, i), 'utf-8')
    md = hashlib.md5(current).hexdigest()
    print(current, md)
