defmodule Pig.Repo.Migrations.CreateDeploymentStateTable do
  use Ecto.Migration

  def change do
    create table(:deployment_state) do
      add :image, :string
      add :name, :string
      add :namespace, :string
      add :scale, :integer
      add :raw, :map
    end
  end
end
