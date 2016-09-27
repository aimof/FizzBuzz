defmodule FizzBuzz do

  def fizzBuzz(num) do

  end

  def str(num), do: Integer.to_charlist(num)

  def _fizz(true), do: "Fizz"
  def _fizz(false), do: ""

  def _buzz(true), do: "Buzz"
  def _buzz(false), do: ""

  def _notFB("", num), do: Integer.to_charlist(num)
  def _notFB(some, _), do: some
end

Enum.map(1..100, fn(x) -> IO.puts FizzBuzz.fizzBuzz(x) end)
