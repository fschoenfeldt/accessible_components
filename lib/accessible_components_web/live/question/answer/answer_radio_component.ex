defmodule AccessibleComponentsWeb.AnswerRadioComponent do
  use AccessibleComponentsWeb, :live_component

  defp input_type("multi_select" = _type), do: "checkbox"
  defp input_type("radio_select" = _type), do: "radio"
end
