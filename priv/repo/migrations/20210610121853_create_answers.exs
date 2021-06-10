defmodule AccessibleComponents.Repo.Migrations.CreateAnswers do
  use Ecto.Migration

  def change do
    create table(:answers, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :text, :string
      add :question_id, :integer

      timestamps()
    end

  end
end
