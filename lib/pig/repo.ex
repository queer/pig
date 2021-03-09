defmodule Pig.Repo do
  use Ecto.Repo,
    otp_app: :pig,
    adapter: Ecto.Adapters.Postgres
end
