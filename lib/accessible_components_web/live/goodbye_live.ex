defmodule AccessibleComponentsWeb.GoodbyeLive do
  use AccessibleComponentsWeb, :live_view

  @impl true
  def render(assigns) do
    ~L"""
    <div class="goodbye">
      <span>👋</span>
      <h1>Vielen Dank für Ihre Angaben!</h1>
      <p>Ihre Daten wurden erfolgreich übertragen. <a href="/" title="Anamnese erneut starten">(Neustart)</a></p>
    </div>
    """
  end
end
