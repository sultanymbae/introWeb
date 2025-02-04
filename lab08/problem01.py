#1. Function to calculate the square of a number
def square(num):
    return num ** 2

print(square(4))

#2. Function that takes a list of numbers and returns their sum
def sum_list(numbers):
    return sum(numbers)

print(sum_list([1, 2, 3, 4]))

#3. Recursive function to calculate the Fibonacci sequence
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

print(fibonacci(6))

#4. Function to determine if a number is prime
def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, int (num ** 0.5) + 1):
        if num % i == 0:
            return False
        return True
print(is_prime(7))
print(is_prime(10))