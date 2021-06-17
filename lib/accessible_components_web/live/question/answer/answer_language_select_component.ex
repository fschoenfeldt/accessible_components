defmodule AccessibleComponentsWeb.AnswerLanguageSelectComponent do
  use AccessibleComponentsWeb, :live_component

  @static_locale_path "/images/locale_flags/"

  @impl true
  def mount(socket) do
    socket = socket |> assign(static_locale_path: @static_locale_path)
    {:ok, socket}
  end

  def locale_flag("Deutsch" = _locale), do: "de.svg"
  def locale_flag("Englisch" = _locale), do: "gb.svg"
  def locale_flag("Französisch" = _locale), do: "fr.svg"
  def locale_flag("Spanisch" = _locale), do: "es.svg"
  def locale_flag("Russisch" = _locale), do: "ru.svg"
  def locale_flag("Polnisch" = _locale), do: "pl.svg"
  def locale_flag("Arabisch" = _locale), do: "sa.svg"
  def locale_flag(_), do: "missing.svg"
end
