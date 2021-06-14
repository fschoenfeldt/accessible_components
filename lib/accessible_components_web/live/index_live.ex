defmodule AccessibleComponentsWeb.IndexLive do
  use AccessibleComponentsWeb, :live_view
  alias AccessibleComponents.Questions
  alias AccessibleComponentsWeb.{AnswerMultiComponent, AnswerRadioComponent}

  @impl true
  def mount(_params, _session, socket) do
    socket = socket |> assign(questions: Questions.list_questions())
    {:ok, socket}
  end

  defp aria_role("radio_select" = _type), do: "radiogroup"
  defp aria_role(_ = _type), do: ""
end
