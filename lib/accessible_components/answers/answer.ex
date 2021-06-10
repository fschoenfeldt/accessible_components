defmodule AccessibleComponents.Answers.Answer do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "answers" do
    field :question_id, :integer
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(answer, attrs) do
    answer
    |> cast(attrs, [:text, :question_id])
    |> validate_required([:text, :question_id])
  end
end
