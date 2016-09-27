defmodule FizzBuzz do

  def fizzBuzz(num) do
    _notFB(_fizz(_sumToOneDigit(Integer.to_charlist(num))) <> _buzz(_getLastDigit(Integer.to_charlist(num))) , num)
  end

  def _sumDigit([head | []]), do: head
  def _sumDigit([head | tail]), do: Integer.to_charlist(head - 48 + _sumDigit(tail))

  def _sumToOneDigit([head | []]), do: head - 48
  def _sumToOneDigit(list), do: _sumToOneDigit(_sumDigit(list))

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
