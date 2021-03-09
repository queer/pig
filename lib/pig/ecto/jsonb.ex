defmodule Pig.Ecto.Jsonb do
  @doc """
  https://stackoverflow.com/a/55585056
  """

  @behaviour Ecto.Type

  def type, do: :map

  def cast(data) when is_list(data) or is_map(data) do
    {:ok, data}
  end

  def cast(_), do: :error

  def load(data) when is_list(data) or is_map(data) do
    {:ok, data}
  end

  def dump(data)  when is_list(data) or is_map(data), do: {:ok, data}
  def dump(_), do: :error
end
