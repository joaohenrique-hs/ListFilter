defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.filter(list, &filter/1)
    |> Enum.map(&String.to_integer(&1))
    |> length()
  end

  defp filter(elem) do
    elem
    |> Integer.parse()
    |> case do
      {x, ""} -> x
      _ -> 2
    end
    |> Integer.is_odd()
  end
end
