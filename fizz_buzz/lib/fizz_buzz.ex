defmodule FizzBuzz do
  def build(file_name) do
    file_name
    # pipe operator
    |> File.read()
    |> handle_file_read()
  end

  # pattern match
  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file_read({:error, reason}), do: reason
end
