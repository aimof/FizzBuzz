# -*- coding=utf-8 -*-

set3 = set()
set5 = set()
for i in range(1, 101):
    set3.add(i)
    set5.add(i)
for i in range(1, 34):
    set3.remove(3*i)
for i in range(1, 21):
    set5.remove(5*i)

for i in range(1, 101):
    if i not in set3 and i not in set5:
        print("FizzBuzz")
    if i not in set3:
        print("Fizz")
    if i not in set5:
        print("Buzz")
    else:
        print("%d" % i)
