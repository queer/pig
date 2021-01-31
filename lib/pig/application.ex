defmodule Pig.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    dsn = Application.get_env :pig, :singyeong_dsn

    children = [
      PigWeb.Telemetry,
      {Phoenix.PubSub, name: Pig.PubSub},
      PigWeb.Endpoint,
    ] ++ Mahou.Singyeong.child_specs(dsn, Pig.Consumer)

    opts = [strategy: :one_for_one, name: Pig.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    PigWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
