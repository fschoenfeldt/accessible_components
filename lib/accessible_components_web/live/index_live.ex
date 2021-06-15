defmodule AccessibleComponentsWeb.IndexLive do
  use AccessibleComponentsWeb, :live_view
  alias AccessibleComponents.Questions
  alias AccessibleComponentsWeb.{QuestionComponent}

  @impl true
  def mount(_params, _session, socket) do
    socket = socket |> assign(questions: Questions.list_questions())
    {:ok, socket}
  end
end
