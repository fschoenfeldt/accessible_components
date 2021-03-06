defmodule AccessibleComponents.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string
      add :description, :string
      add :type, :string
      add :required, :boolean, default: false

      timestamps()
    end

  end
end
