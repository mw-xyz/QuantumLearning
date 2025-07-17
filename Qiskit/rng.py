from math import *
from random import *
print("Hello Quantum")

"""Random Number Generator"""

# This should be quantum-ised -- will update.

def generate_bits(max_bits):
    bits = []
    for i in range(1, max_bits):
        bits.append(randint(0, 1))
    print(bits)
    return bits

def convert_bits(max_no, no_of_iters):
    nums = []
    rng = 0
    for i in range(1, no_of_iters):
        max_bits = ceil(log(max_no, 2))
        bits = generate_bits(max_bits)
        for i in range(0, len(bits)):
            if bits[i] == 1:
                rng += 2**i
                nums.append(rng)
    return nums

def main():
    max_no = int(input("enter max no: "))
    no_of_iters = int(input("enter how many nos u want generated: "))
    nums = convert_bits(max_no, no_of_iters)
    print(nums)

if __name__ == "__main__":
    main()