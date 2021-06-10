defmodule AccessibleComponents.Questions.Question do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "questions" do
    field :title, :string
    field :type, :string
    has_many :answers, AccessibleComponents.Answers.Answer

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:title, :type])
    |> cast_assoc(:answers)
    |> validate_required([:title, :type])
  end
end
