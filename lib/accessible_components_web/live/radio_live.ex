defmodule AccessibleComponentsWeb.RadioLive do
  use AccessibleComponentsWeb, :live_view
  alias AccessibleComponents.Questions

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(questions: Questions.list_questions())}
  end
end
