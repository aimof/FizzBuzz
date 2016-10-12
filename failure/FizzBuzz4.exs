# This FizzBuzz needs much time.

defmodule FizzBuzz do

  def fizzBuzz(n), do: _checkFizzBuzz(_fizz(n), _buzz(n), n)

  def _checkFizzBuzz(true, true, _), do: "FizzBuzz"
  def _checkFizzBuzz(true, false, _), do: "Fizz"
  def _checkFizzBuzz(false, true, _), do: "Buzz"
  def _checkFizzBuzz(false, false, n), do: Integer.to_charlist(n)

  def _fizz(0), do: true
  def _fizz(1), do: false
  def _fizz(i), do: !(_fizz(i-1) || _fizz(i-2))

  def _buzz(0), do: true
  def _buzz(1), do: false
  def _buzz(2), do: false
  def _buzz(3), do: false
  def _buzz(i), do: !(_buzz(i-1) || _buzz(i-2) || _buzz(i-3) || _buzz(i-4))
end

Enum.map(1..100, fn(x) -> IO.puts FizzBuzz.fizzBuzz(x) end)
