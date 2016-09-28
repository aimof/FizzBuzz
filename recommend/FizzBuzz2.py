# -*-coding=utf-8 -*-

array = [None]*101
for i in range(1, 34):
    array[3*i] = "Fizz"
for i in range(1, 21):
    array[5*i] = "Buzz"
for i in range(1, 6):
    array[15*i] = "FizzBuzz"

for i in range(1, 101):
    print(array[i] or i)
