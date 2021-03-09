defmodule Pig.DeploymentState do
  use Pig.Model
  alias Mahou.Format.App

  schema "deployment_state" do
    field :image, :string
    field :name, :string
    field :namespace, :string
    field :scale, :integer, default: 1
    field :raw, Jsonb
  end
end
