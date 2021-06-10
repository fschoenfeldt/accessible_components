defmodule AccessibleComponentsWeb.RadioLive do
  use AccessibleComponentsWeb, :live_view

  @questions [
    %{
      id: "1",
      title: "Wie haben sich die Symptome über die Zeit verändert?",
      type: :radio_select,
      answers: [
        %{
          id: 1,
          text: "Die Symptome haben sich verbessert"
        },
        %{
          id: 2,
          text: "Die Symptome sind gleich geblieben"
        },
        %{
          id: 3,
          text: "Die Symptome haben sich verschlechtert"
        }
      ]
    }
  ]

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(questions: @questions)}
  end
end
