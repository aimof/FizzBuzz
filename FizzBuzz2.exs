defmodule FizzBuzz do

  def fizzBuzz(num) do
    _notFB(_fizz(_check(_ternary(num))) <> _buzz(_check(_quinary(num))), num)
  end

  def _ternary(num), do: Integer.to_charlist(num, 3)
  def _quinary(num), do: Integer.to_charlist(num, 5)

  def _check([30 | []]), do: true
  def _check([_ | []]), do: false
  def _check([_ | tail]), do: _check([tail])

  def _fizz(true), do: "Fizz"
  def _fizz(false), do: ""

  def _buzz(true), do: "Buzz"
  def _buzz(false), do: ""

  def _notFB("", num), do: Integer.to_charlist(num)
  def _notFB(some, _), do: some
end

IO.puts FizzBuzz.fizzBuzz(15)
