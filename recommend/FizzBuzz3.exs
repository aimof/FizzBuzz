defmodule FizzBuzz do

  def fizzBuzz(num) do
    _notFB(_fizz(oneDigit(Integer.to_charlist(num))) <> _buzz(_getLastDigit(Integer.to_charlist(num))) , num)
  end

  def sumDigit([head | []]), do: head - 48
  def sumDigit([head | tail]), do: head - 48 + sumDigit(tail)

  def oneDigit([head | []]), do: head - 48
  def oneDigit(list), do: oneDigit(Integer.to_charlist(sumDigit(list)))

  def _fizz(3), do: "Fizz"
  def _fizz(6), do: "Fizz"
  def _fizz(9), do: "Fizz"
  def _fizz(_), do: ""

  def _getLastDigit([head | []]), do: head - 48
  def _getLastDigit([_ | tail]), do: _getLastDigit(tail)

  def _buzz(5), do: "buzz"
  def _buzz(0), do: "buzz"
  def _buzz(_), do: ""

  def _notFB("", num), do: Integer.to_charlist(num)
  def _notFB(some, _), do: some
end

Enum.map(1..100, fn(x) -> IO.puts FizzBuzz.fizzBuzz(x) end)
