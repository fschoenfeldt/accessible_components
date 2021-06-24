defmodule AccessibleComponentsWeb.ListLive do
  use AccessibleComponentsWeb, :live_view
  alias AccessibleComponents.Questions
  alias AccessibleComponents.Questions.Question
  alias AccessibleComponentsWeb.{QuestionComponent}

  @impl true
  def mount(_params, _session, socket) do
    questions = Questions.list_questions()

    socket =
      socket
      |> assign(questions: questions)
      |> assign(changeset: Questions.change_question(%Question{}))

    {:ok, socket}
  end
end
