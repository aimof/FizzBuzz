checkFizzBuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

fizzBuzz = fn
  n -> checkFizzBuzz.(rem(n, 3), rem(n, 5), n)
end

printFizzBuzz = fn
  n -> IO.puts fizzBuzz.(n)
end

Enum.map(1..100, printFizzBuzz)
