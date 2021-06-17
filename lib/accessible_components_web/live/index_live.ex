defmodule AccessibleComponentsWeb.IndexLive do
  use AccessibleComponentsWeb, :live_view
  alias AccessibleComponents.Questions
  alias AccessibleComponentsWeb.{QuestionComponent}

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    # TODO: This throws a nasty error if the question doesn't exist
    question = Questions.get_question!(id)

    socket =
      socket
      |> assign(question: question)
      |> assign(changeset: Questions.change_question(question))

    {:ok, socket}
  end

  @impl true
  def mount(_params, _session, socket) do
    question = Questions.list_questions() |> List.first()

    socket =
      socket
      |> assign(question: question)
      |> assign(changeset: Questions.change_question(question))

    {:ok, socket}
  end
end
