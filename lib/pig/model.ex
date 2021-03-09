defmodule Pig.Model do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      import Ecto.{Changeset, Query}
      alias Ecto.Multi
      alias Pig.Ecto.Jsonb
      alias Pig.Repo
    end
  end
end
