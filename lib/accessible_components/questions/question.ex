defmodule AccessibleComponents.Questions.Question do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "questions" do
    field :title, :string
    field :description, :string
    field :type, :string
    field :required, :boolean, default: false
    has_many :answers, AccessibleComponents.Answers.Answer

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:title, :type])
    |> validate_required([:title, :type])
  end
end
